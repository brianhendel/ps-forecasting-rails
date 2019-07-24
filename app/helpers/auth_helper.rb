module AuthHelper

  # App's client ID. Register the app in Application Registration Portal to get this value.
  CLIENT_ID = '7366f0f9-df7a-4b1f-8d34-a96bb7488be5'
  # App's client secret. Register the app in Application Registration Portal to get this value.
  CLIENT_SECRET = 'vbI7YT*4od*Rkt5EV3oJXx+-v@TUs?R0'

  # Scopes required by the app
  SCOPES = [ 'openid',
    'profile',
    'User.Read',
    'Mail.Read' ]

REDIRECT_URI = 'http://localhost:3000/authorize' # Temporary!

# Generates the login URL for the app.
def get_login_url
client = OAuth2::Client.new(CLIENT_ID,
                       CLIENT_SECRET,
                       :site => 'https://login.microsoftonline.com',
                       :authorize_url => '/common/oauth2/v2.0/authorize',
                       :token_url => '/common/oauth2/v2.0/token')

login_url = client.auth_code.authorize_url(:redirect_uri => REDIRECT_URI, :scope => SCOPES.join(' '))
end
end