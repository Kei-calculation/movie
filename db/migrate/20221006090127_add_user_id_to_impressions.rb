class AddUserIdToImpressions < ActiveRecord::Migration[6.1]
  def change
    add_column :impressions, :user_id, :integer
  end
end
