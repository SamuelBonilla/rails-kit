# Starter Kit Application

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

devise, letter_opener, rails console in the browser, user role base auth, has_role? "role_name"

# Create role
AuthGroup.create!(:role => "admin", :description => "....")

# add user to role ( class method)
AuthMembership.add_user_to_role!("s-bonilla@gmail.com", "edit")

# User has role ( instant method)

auth = Auth.find(1)
auth.has_role?("admin")


# devise

To verify if a user is signed in, use the following helper:

auth_signed_in?
For the current signed-in user, this helper is available:

current_auth
current_auth.has_role? "admin"

You can access the session for this scope:

auth_session



* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
