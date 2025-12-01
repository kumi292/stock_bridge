class RenameArticleToDeliveryItem < ActiveRecord::Migration[8.1]
  def change
    rename_table :articles, :delivery_item
  end
end
