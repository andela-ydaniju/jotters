class AddUserIdColumnToJotters < ActiveRecord::Migration
  def change
    add_reference :jotters, :user, index: true, foreign_key: true
  end
end
