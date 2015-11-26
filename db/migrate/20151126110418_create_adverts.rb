class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :title, default: ''
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
