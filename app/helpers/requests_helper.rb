module RequestsHelper
    
    def current_response(this_request, this_user)
        Response.find_by(:request => this_request, :user => this_user)
    end
    
    def current_assignment(this_request, this_user)
        Assignment.find_by(:request => this_request, :user => this_user)
    end
    
end
