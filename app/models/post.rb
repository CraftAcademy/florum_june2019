class Post < ApplicationRecord
    has_many :comments
    validates :title, :text, :category, presence: true
    belongs_to :user
end
