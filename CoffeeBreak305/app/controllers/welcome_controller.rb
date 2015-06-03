class WelcomeController < ApplicationController
  def index
  end
  def steps
  end
  def about_us
    @contact = Contact.new
  end
end
