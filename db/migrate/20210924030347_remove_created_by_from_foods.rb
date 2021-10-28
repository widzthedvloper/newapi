class RemoveCreatedByFromFoods < ActiveRecord::Migration[6.1]
  def change
    remove_column :foods, :created_by, :string
  end
end
