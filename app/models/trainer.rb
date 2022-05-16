#username:string
#password_digest:string
#
#password:string virtual
#password_confirmation:string virtual

class Trainer < ApplicationRecord
  has_secure_password

  validates:username, presence: true
end
