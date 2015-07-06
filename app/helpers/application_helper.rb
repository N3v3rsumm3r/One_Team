module ApplicationHelper
    
    def link_back
        session[:return_to] ||= request.referer
    end
end
