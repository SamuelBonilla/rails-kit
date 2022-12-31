class AuthMembership < ApplicationRecord
  belongs_to :auth
  belongs_to :auth_group

  has_many :auth
  has_many :auth_group
end
