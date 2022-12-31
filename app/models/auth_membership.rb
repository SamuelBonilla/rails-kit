class AuthMembership < ApplicationRecord
  belongs_to :auth
  belongs_to :auth_group
end
