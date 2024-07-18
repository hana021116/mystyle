class Tag < ApplicationRecord
    validates :name, presence: true
    has_many :visual_tag_relations, dependent: :destroy
    has_many :visuals, through: :visual_tag_relations, dependent: :destroy
    has_many :visual_tags, dependent: :destroy
    has_many :visuals, through: :visual_tags
end
