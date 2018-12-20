# require "authy"

# Authy.api_key = "8rypSAXU2lI9mkLIjVrLUUjgMKNg0oJz"
# Authy.api_uri = "https://api.authy.com"

# authy = Authy::API.register_user(:email => "users@email.com", :cellphone => "111-111-1111", :country_code => "1")

# if authy.ok?
#   self.authy_id = authy.id # this will give you the user authy id to store it in your database
# else
#   authy.errors # this will return an error hash
# end
