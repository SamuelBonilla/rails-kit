class ApplicationController < ActionController::Base

  helper_method :has_role?

  def has_role?(role_name)
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
