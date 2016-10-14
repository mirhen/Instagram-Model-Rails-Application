class AddStringToPhoto < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :url, :string
  end
end
