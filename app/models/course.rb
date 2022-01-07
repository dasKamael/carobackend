class Course < ApplicationRecord
    validates :name, presence: true, length: {minimum:3, maximum:20}
    validates :capacity, presence: true
    validates :is_single, presence: true
end
