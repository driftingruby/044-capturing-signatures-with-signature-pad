class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :verify_terms_acceptance 

  private

  def verify_terms_acceptance
    unless user_signed_in? && current_user.document
      redirect_to new_document_path, alert: 'You must first accept terms and conditions before performing any actions.'
    end
  end
end
