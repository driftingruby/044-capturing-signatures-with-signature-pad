class DocumentsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_terms_acceptance

  def new
    @document = current_user.build_document
  end

  def create
    @document = current_user.build_document(document_params)
    @document.signed_on = DateTime.now
    if @document.save
      redirect_to root_url, notice: 'Terms and Conditions accepted.'
    else
      render :new
    end
  end


  private

    def document_params
      params.require(:document).permit(:signature)
    end
end
