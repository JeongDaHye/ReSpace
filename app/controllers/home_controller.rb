class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:temp]
  
  def index
  end
  
  def temp
  end
  
  def matching
  end
end
