class Visit < ActiveRecord::Base
  has_many :visit_teachers, dependent: :destroy
  has_many :visit_people, dependent: :destroy
  has_many :teachers, through: :visit_teachers
  has_many :people, through: :visit_people
end
