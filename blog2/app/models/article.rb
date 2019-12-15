class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true,
	length: {minimum: 5 }
	#Requires each article object to have a title of at least five characters 
	#when article.save is called (Validation)
end
