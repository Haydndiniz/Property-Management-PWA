class DashboardsController < ApplicationController


    def index
      if user_signed_in? || tenant_signed_in?
        redirect_to properties_path
      else
        render 'index'

      end
    end
end
