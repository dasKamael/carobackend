class Book < ApplicationRecord
    # precense ob es vorhanden sein soll
    validates :author, presence: true, length: {minimum:3, maximum:20}
    validates :title, presence: true, length: {minimum:3, maximum:20}
end
