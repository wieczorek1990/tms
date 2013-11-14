class Project < ActiveRecord::Base
  belongs_to :contractor
  belongs_to :team
  belongs_to :contact_person
  has_many :attachments, :as => :attachable
  accepts_nested_attributes_for :attachments
end
