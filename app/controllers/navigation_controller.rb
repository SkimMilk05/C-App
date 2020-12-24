class NavigationController < ApplicationController
  before_action :require_login

  def index
     @test_questions = TestQuestion.all
  end

  def glossary
  end

end
