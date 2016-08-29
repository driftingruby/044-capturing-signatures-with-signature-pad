class Users::RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_terms_acceptance
end
