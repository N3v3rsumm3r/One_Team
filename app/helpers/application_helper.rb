module ApplicationHelper
    
    def link_back
        session[:return_to] = request.referer
    end
    
    def admin_menu
        current_page?(users_path) || current_page?(departments_path) || current_page?(groups_path) ||
        current_page?(locations_path) || current_page?(positions_path) || current_page?(skills_path)
    end
end
