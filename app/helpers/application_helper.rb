module ApplicationHelper
    
    def link_back
        session[:return_to] = nil
        session[:return_to] ||= request.referer
    end
end
