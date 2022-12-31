class ApplicationController < ActionController::Base

  helper_method :has_role?

  def has_role?(role_name)
    # we can improve this behavior by adding this function to the user class
    # and when the user is login set the current user role and then validate
    # this data to avoid consulting the database in each call to this function
    if auth_signed_in?
      current_auth.auth_membership.all.each do |role|
        is_role = AuthGroup.find_by(id: role.auth_group_id, role: role_name)
        if is_role
          return true
        end
      end
    end
    return false
  end

end
