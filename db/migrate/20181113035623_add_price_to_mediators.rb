class AddPriceToMediators < ActiveRecord::Migration[5.2]
  def change
    add_column :mediators, :price, :integer
  end
end
