module RequestsHelper
    
    def current_response(this_request, this_user)
        Response.find_by(:request => this_request, :user => this_user)
    end
    
    def current_assignment(this_request, this_user)
        Assignment.find_by(:request => this_request, :user => this_user)
    end
    
    def admin_active
        params[:controller] == 'departments' || params[:controller] == 'locations' || params[:controller] == 'groups'|| 
        params[:controller] == 'locations' || params[:controller] == 'positions' || params[:controller] == 'skills' ||
        (params[:controller] == 'users' && !current_page?(current_user))
    end
end
