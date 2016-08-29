class VisitorsController < ApplicationController
  before_action :authenticate_user!, only: :private_content
  skip_before_action :verify_terms_acceptance, only: :index

  def index
  end

  def private_content
  end
end
