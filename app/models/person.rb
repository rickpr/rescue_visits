class Person < ActiveRecord::Base
  belongs_to :teacher
  has_many :visit_people, dependent: :destroy
  has_many :visits, through: :visit_people
end
