class Widget < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name     :string
    quantity :integer
    timestamps
  end
  attr_accessible :name, :quantity

  self.per_page = 3

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
