class ApplicationController < ActionController::Base

  def hello
    render html: "Hello, guys!"
  end
end
