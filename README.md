# YikYak Ruby Library

## Dependencies

- HTTParty: `gem install httparty`
- JWT: `gem install jwt`

## Usage

- Require the library: `require 'yikyak_ruby'`.
- Create a YikYak instance: `yak = YikYak.new user_token, app_id, secret_key`.
- Use the functions available from the `yak` instance.

## Functions

### set\_status

If it goes through, the function returns `true`. Returns `false` otherwise.

```ruby
if yak.set_status "JustChillin"
  p "Worked"
else
  p "Failed"
end
```
