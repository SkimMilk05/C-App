class PracticeController < ApplicationController
  before_action :require_login

  def index
    @images = Image.all
  end

end
