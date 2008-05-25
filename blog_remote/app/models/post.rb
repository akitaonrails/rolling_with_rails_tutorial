class Post < ActiveResource::Base
  self.site = 'http://localhost:3000/admin'
  self.user = 'akita'
  self.password = 'akita'
  self.timeout = 5 # this is IMPORTANT!
end