class AuthMembership < ApplicationRecord
  belongs_to :auth
  belongs_to :auth_group

  def self.add_user_to_role!(user_email, role)
    auth_model = Auth.find_by(email: user_email)
    if !auth_model
      raise "User does not exist"
    elsif !auth_model.has_role?(role)
      role_model = AuthGroup.find_by(role: role)
      if !role_model
        raise "The Role does not exist on the DataBase"
      end
      return AuthMembership.create!(:auth_id => auth_model.id, :auth_group_id => role_model.id)
    end
    raise "The user already has this role"
  end

end
