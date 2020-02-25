class Review < ApplicationRecord
    belongs_to :book, optional: true
    
    validates :body, presence: true, length: { maximum: 255 }
end
