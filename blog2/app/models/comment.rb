class Comment < ApplicationRecord
  belongs_to :article #Associates comments to articles
end
