class Users::SessionsController < Devise::SessionsController
  prepend_before_filter :captcha_valid,:only=> [:create]
  # before_action :configure_sign_in_params, only: [:create]
  include SimpleCaptcha::ControllerHelpers
  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super
  end
  private
  def captcha_valid
    if simple_captcha_valid?
      true
    else
      flash[:alert]="Captcha code is wrong,try again!"
      self.resource=resource_class.new(sign_in_params)
      respond_with_navigational(resource){render :new}
    end
  end
  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
