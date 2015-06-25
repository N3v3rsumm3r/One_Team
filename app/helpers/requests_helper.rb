module RequestsHelper
    
    def response_exists(this_request, this_user)
        @responses.where(:request == this_request && :user == this_user).any?
    end
    
    def current_response(this_request, this_user)
        Response.find_by(:request => this_request, :user => this_user)
    end
end
