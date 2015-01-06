class Teacher < ActiveRecord::Base
  has_many :people
  has_many :visit_teachers, dependent: :destroy
  has_many :visits, through: :visit_teachers
end
