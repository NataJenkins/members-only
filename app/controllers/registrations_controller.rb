class RegistrationsController < Devise::RegistrationsController
    private

    def sign_up_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end