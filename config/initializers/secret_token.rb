# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token_file
  end
end

SampleApp::Application.config.secret_key_base = '29bceb370ee7b7d47c2154271eaa503a9f88a797b67c7b8cbbe0e3a32db7e286be743a9d94ba0b86bfd11bb5a73a4307ed2e7a09f9d5864bb43fe0cab9b684d6'
