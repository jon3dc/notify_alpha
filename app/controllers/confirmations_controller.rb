class ConfirmationsController < Devise::ConfirmationsController
  skip_before_filter :authenticate_user!
  skip_before_action :verify_authenticity_token

  def update
    with_unconfirmed_confirmable do
      if @confirmable.has_no_password?
        @confirmable.attempt_set_password(params[:user])
        if @confirmable.valid? and @confirmable.password_match?
          do_confirm
        else
          do_show
          @confirmable.errors.clear
        end
      else
        @confirmable.errors.add(:email, :password_already_set)
      end
    end

    if !@confirmable.errors.empty?
      self.resource = @confirmable
      render 'devise/confirmations/new'
    end
  end

  def show
    with_unconfirmed_confirmable do
      if @confirmable.has_no_password?
        do_show
      else
        do_confirm
      end
    end

    unless @confirmable.errors.empty?
      if @confirmable.confirmed_at.present?
        do_confirm
      else
        self.resource = @confirmable
        render 'users/passwords/edit'
      end
    end
  end

  protected

  def with_unconfirmed_confirmable
    confirmation_token = confirmation_token_from_params
    @confirmable = User.find_or_initialize_with_error_by(:confirmation_token, confirmation_token)
    if !@confirmable.new_record?
      @confirmable.only_if_unconfirmed {yield}
    end
  end

  def confirmation_token_from_params
    params["confirmation_token"]
  end

  def do_show
    @confirmation_token = params[:confirmation_token]
    @requires_password = true
    self.resource = @confirmable
    render 'users/passwords/edit'
  end

  def do_confirm
    @confirmable.confirm
    set_flash_message :notice, :confirmed
    sign_in_and_redirect(resource_name, @confirmable)
  end
end
