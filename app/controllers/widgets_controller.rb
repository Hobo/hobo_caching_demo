class WidgetsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def index
    self.this = Widget.paginate(:page => params[:page]).
      search(params[:search], :name).
      order_by(parse_sort_param(:name, :quantity))
    hobo_index
  end

end
