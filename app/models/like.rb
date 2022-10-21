class Like < ApplicationRecord
  belongs_to :impression
  belongs_to :user
  validates_uniqueness_of :impression_id, scope: :user_id
end
