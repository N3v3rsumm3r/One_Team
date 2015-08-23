module ApplicationHelper
    
    def link_back
        session[:return_to] = request.referer
    end
    
    def admin_menu
        current_page?(users_path) || current_page?(departments_path) || current_page?(groups_path) ||
        current_page?(locations_path) || current_page?(positions_path) || current_page?(skills_path)
    end
    
    def admin_active
        params[:controller] == 'departments' || params[:controller] == 'locations' || params[:controller] == 'groups'|| 
        params[:controller] == 'locations' || params[:controller] == 'positions' || params[:controller] == 'skills' ||
        (params[:controller] == 'users' && !current_page?(current_user))
    end
    
    def my_request_view
        params.include?(:user) && params[:controller] == 'requests' || params[:controller] == 'requests' && 
        params[:action] == 'new' || params[:controller] == 'requests' && params[:action] == 'edit'
    end
    
    def open_requests_view
        params.include?(:active) && params[:controller] == 'requests' || params[:controller] == 'responses' && params[:action] == 'new'
    end
    
    def applied_view
        params.include?(:applied) && params[:controller] == 'requests' || params[:controller] == 'responses' && params[:action] == 'edit'
    end
end
