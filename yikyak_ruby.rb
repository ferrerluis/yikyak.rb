require 'jwt'
require 'httparty'

class YikYak
  URL = 'https://api.yikyak.io/status/v1beta1'

  def initialize user, app, secret
    @user = user
    @app = app
    @secret = secret
  end
  
  def set_status status
    endpoint = '/setstatus'
    payload = {
      UserToken: @user,
      ApplicationId: @app,
      Status: status,
      Latitude: 0,
      Longitude: 0,
      IgnoreLatLng: true,
      VelocityEsitmateMagnitude: 0,
      VelocityEsitmateTheta: 0,
      Checksum: ''
    }
 
    post endpoint, payload
  end

  private
  
  def post(endpoint, payload)
    options = {
      body: prepare(payload).to_json,
      headers: { 'Content-Type' => 'application/json' }
    }
    res = HTTParty.post(URL + endpoint, options)
    p res.body if res.code/100 != 2
  end

  def prepare(payload)
    token = JWT.encode payload, Array(@secret).pack('H*'), 'HS512'
    payload[:Checksum] = token
    payload
  end
end
