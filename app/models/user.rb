class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :visuals, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_visuals, through: :likes, source: :visual
  def already_liked?(visual)
    self.likes.exists?(visual_id: visual.id)
  end
  validates :name, presence: true 
  validates :profile, length: { maximum: 200 } 
  mount_uploader :image, ImageUploader
end
