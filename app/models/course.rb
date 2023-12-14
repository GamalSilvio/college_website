class Course < ApplicationRecord
    validates :name, presence: true, length: { minimum: 5, maximun: 40}
    validates :short_name, presence: true, length: { minimum: 3, maximun: 10}
    validates :description, presence: true, length: { minimum: 10, maximun: 250}

    has_many :student_courses
    has_many :students, through: :student_courses
end
