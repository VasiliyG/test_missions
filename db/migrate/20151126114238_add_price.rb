class AddPrice < ActiveRecord::Migration
  def change
    add_column :adverts, :price, :integer
  end
end
