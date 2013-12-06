class Team < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :projects, join_table: 'teams_projects'
end
