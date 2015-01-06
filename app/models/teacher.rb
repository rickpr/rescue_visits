class Teacher < ActiveRecord::Base
  has_many :people
  has_many :visit_teachers, dependent: :destroy
  has_many :visits, through: :visit_teachers
  validates :name, presence: true, uniqueness: true
  phony_normalize :phone, default_country_code: 'US'
  validates :phone, presence: true, phony_plausible: true
end
