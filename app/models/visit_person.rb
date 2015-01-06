class VisitPerson < ActiveRecord::Base
  belongs_to :visit
  belongs_to :person
end
