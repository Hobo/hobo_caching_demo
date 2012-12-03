class WidgetsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def index
    hobo_index
      self.this = self.this.search(params[:search], :name) if params[:search]
      self.this = self.this.order_by(parse_sort_param(:name, :quantity)) if params[:sort]
    end
  end

  index_action :cached, :nested, :swept, :simple_russian

  def cached; index; end
  def simple_russion; index; end
  def nested; index; end
  def swept; index; end

end
