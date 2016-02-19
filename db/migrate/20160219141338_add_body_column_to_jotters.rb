class AddBodyColumnToJotters < ActiveRecord::Migration
  def change
    add_column :jotters, :body, :text
  end
end
