class HomeController < ApplicationController
	before_action :authenticate_cliente!

  def index
  end

  def preview
  end

end
