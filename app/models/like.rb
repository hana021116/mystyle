class Like < ApplicationRecord
  belongs_to :visual
  belongs_to :user
  validates_uniqueness_of :visual_id, scope: :user_id
end
