class Person < ActiveRecord::Base
  belongs_to :teacher
  has_many :visit_people, dependent: :destroy
  has_many :visits, through: :visit_people
  validates :name, presence: true
  phony_normalize :phone, default_country_code: 'US'
  validates :phone, phony_plausible: true
  validates :help, presence: true
end
