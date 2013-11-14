class ContractorsProject < ActiveRecord::Base
  belongs_to :contractor
  belongs_to :project
end
