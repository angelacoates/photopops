  class HomeController < ApplicationController
    before_action :authenticate!, except: [:landing]
    def index
    end

    def theme
    end

    def home
      @request = Request.new(name: current_user.name, contact: current_user.email)
    end
  end
