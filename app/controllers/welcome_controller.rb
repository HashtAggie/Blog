class WelcomeController < ApplicationController
  def index
  end

  def login=(login)
  @login = login
  end

  def login
    @login || self.username || self.email
  end
end
