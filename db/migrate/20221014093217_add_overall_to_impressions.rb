class AddOverallToImpressions < ActiveRecord::Migration[6.1]
  def change
    add_column :impressions, :overall, :integer
  end
end
