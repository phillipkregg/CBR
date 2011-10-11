
  
 # in your app controller, you'll want to set the layout to nil for XHR (ajax) requests
class ApplicationController < ActionController::Base
  protect_from_forgery
  layout Proc.new { |controller| controller.request.xhr? ? nil : 'application' }
end
  

