class Visual < ApplicationRecord
    has_many :visual_tag_relations, dependent: :destroy
    has_many :tags, through: :visual_tag_relations, dependent: :destroy
    has_many :visual_tags, dependent: :destroy
    has_many :tags, through: :visual_tags
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    has_one_attached :photo
    mount_uploader :image, ImageUploader
    mount_uploader :video, VideoUploader
    def self.ransackable_attributes(auth_object = nil)
        ["body", "color", "created_at", "id", "image", "photo", "style", "tall", "updated_at", "user_id", "video", "weight"]
    end
    
end
