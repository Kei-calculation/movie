class CreateImpressions < ActiveRecord::Migration[6.1]
  def change
    create_table :impressions do |t|
      t.text :body

      t.timestamps
    end
  end
end
