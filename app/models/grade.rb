class Grade < ApplicationRecord
  has_many :instructors, class_name: "instructor", foreign_key: "reference_id" :instructor
  has_many :courses, class_name: "course", foreign_key: "reference_id" :course
end
