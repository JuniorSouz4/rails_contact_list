class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    include SessionsHelper

    private
        def require_logged_in_user
            unless user_signed_in?
                flash[:danger] = 'Área restrita. Por favor, realize login para acessar.'
                redirect_to entrar_path
            end
        end
end
