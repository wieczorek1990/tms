class Task < ActiveRecord::Base
  belongs_to :person_responsible
  belongs_to :work_category
  belongs_to :status
  belongs_to :project
end
