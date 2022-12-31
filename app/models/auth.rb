class Auth < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :lockable, :timeoutable, :trackable

         has_many :auth_membership

  def has_role?(role_name)
    # we can improve this behavior by adding this function to the user controller
    # and when the user is login set the current user role and then validate
    # this data to avoid consulting the database in each call to this function
    self.auth_membership.all.each do |role|
      is_role = AuthGroup.find_by(id: role.auth_group_id, role: role_name)
      if is_role
        return true
      end
    end
    return false
  end

end
