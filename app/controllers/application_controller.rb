class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :load_version
  
  def load_version
    session[:version] = AppVersion.latest unless session[:version]
    @version = session[:version]
    if @version.nil?
      @version = AppVersion.create(:version => '1.0', :revision => '1')
    end
  end
end
