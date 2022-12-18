class ApplicationController < ActionController::Base

    def after_sign_in_path_for(resource)
        room_path("1")
      end

    
end
