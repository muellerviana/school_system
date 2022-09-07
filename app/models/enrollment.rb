class Enrollment < ApplicationRecord
  has_one :grade, class_name: "grade", foreign_key: "grade_id" :grade
  belongs_to :student
end
