class ChangeColumnToDeliveryItem < ActiveRecord::Migration[8.1]
  def change
    remove_columns :delivery_item, :title, :body, :editor
    add_column :delivery_item, :asin, :string, null: false
    add_column :delivery_item, :sku, :string
    add_column :delivery_item, :fnsku, :string
    add_column :delivery_item, :product_name, :string
    add_column :delivery_item, :remarks, :text
    add_column :delivery_item, :best_before_date, :datetime
    add_column :delivery_item, :quantity, :integer, null: false
    add_column :delivery_item, :received_quantity, :integer, default: 0
    add_column :delivery_item, :delivered_at, :datetime
    add_column :delivery_item, :shipped_at, :datetime
    add_column :delivery_item, :printed, :boolean, default: false
    add_column :delivery_item, :label_printed, :boolean, default: false
    add_column :delivery_item, :has_issue, :boolean, default: false
  end
end
