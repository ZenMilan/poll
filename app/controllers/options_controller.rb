class OptionsController < ApplicationController
  def create
    @option = Option.new(option_params)
    @option.save!
    redirect_to "/#{params[:redirect][:question_secret]}"
  end

  private

  def option_params
    params.require(:option).permit(:title, :question_id)
  end
end
