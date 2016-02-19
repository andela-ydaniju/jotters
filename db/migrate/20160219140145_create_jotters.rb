class CreateJotters < ActiveRecord::Migration
  def change
    create_table :jotters do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
