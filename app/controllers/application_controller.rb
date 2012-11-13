class ApplicationController < ActionController::Base
  protect_from_forgery

  C = ReloadLib.new
  def index
    @table = [
      {t: "Constant from initializer", d: R.test },
      {t: "New in controller", d: ReloadLib.new.test },
      {t: "Constant from controller", d: C.test},
    ]
  end
end
