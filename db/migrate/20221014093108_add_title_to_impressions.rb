class AddTitleToImpressions < ActiveRecord::Migration[6.1]
  def change
    add_column :impressions, :title, :string
  end
end
