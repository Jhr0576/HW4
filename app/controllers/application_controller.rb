class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    puts "------------------ code before every request ------------------"

    @current_user = User.find_by({ "id" => session["user_id"] })
  end
end

