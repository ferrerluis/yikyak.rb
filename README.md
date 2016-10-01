# YikYak Ruby Library

## Dependencies

- HTTParty: `gem install httparty`
- JWT: `gem install jwt`

## Installation

You can do any of the following:

- Run `gem install yikyak` in your command line.
- Add `gem 'yikyak'` to your `Gemfile`
- Clone the repository and build the gem:
  - `git clone https://github.com/ferrerluis/yikyak.git && cd yikyak`
  - `gem build yikyak-0.1.0.gem`
  - `gem install ./yikyak-0.1.0.gem`

## Usage

- Require the library: `require 'yikyak'`.
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
