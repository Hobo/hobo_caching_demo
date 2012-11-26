class AddWidgets < ActiveRecord::Migration
  def self.up
    create_table :widgets do |t|
      t.string   :name
      t.integer  :quantity
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :widgets
  end
end
