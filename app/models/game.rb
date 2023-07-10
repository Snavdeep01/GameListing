class Game < ApplicationRecord
    include Visible

    has_many :comments,dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: {minimum: 10}
    validates :company , presence: true

   
end
