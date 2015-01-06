class VisitTeacher < ActiveRecord::Base
  belongs_to :visit
  belongs_to :teacher
end
