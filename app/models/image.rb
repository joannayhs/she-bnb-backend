class Image < ApplicationRecord
    belongs_to :listing

    validates :url, :description,  presence: :true 
    
end
