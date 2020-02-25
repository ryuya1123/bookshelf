class Book < ApplicationRecord
    validates :title, presence: true, length: {maximum: 255}
    validates :author, presence: true, length: {maximum: 255}
    validates :price, presence: true
    mount_uploader :image, ImageUploader

    has_many :reviews
end
