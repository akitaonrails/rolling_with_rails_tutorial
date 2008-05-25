# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '64f9f5ea86204105f5052eb876bd5f61'

  before_filter :set_timezone

  private
  def set_timezone
    # current_user.time_zone #=> 'London'
    Time.zone = current_user.time_zone rescue nil
  end

end
