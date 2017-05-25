class HomeController < ApplicationController
  before_action :authenticate!, except: [:landing]
  def index
  end

  def theme
  end

  def home
  end
end
