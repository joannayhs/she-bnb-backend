class Image < ApplicationRecord
    belongs_to :listing

    validates :url, presence: true, uniqueness: true
    validates :description, presence: true
    
end
