class Users::PasswordsController < Devise::PasswordsController
  skip_before_action :verify_terms_acceptance
end
