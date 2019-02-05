class AddPhotoToMediators < ActiveRecord::Migration[5.2]
  def change
    add_column :mediators, :photo, :string
  end
end
