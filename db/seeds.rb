# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'active_record/fixtures'
admin = User.create({email: 'a@a.aa', password: 'password'})
admin.add_role :admin
employee = User.create({email: 'e@e.ee', password: 'password'})
employee.add_role :employee
leader = User.create({email: 'l@l.ll', password: 'password'})
leader.add_role :leader
manager = User.create({email: 'm@m.mm', password: 'password'})
manager.add_role :manager
#ActiveRecord::FixtureSet.create_fixtures(Rails.root.join('test', 'fixtures'), 'users')
ActiveRecord::FixtureSet.create_fixtures(Rails.root.join('test', 'fixtures'), 'statuses')
ActiveRecord::FixtureSet.create_fixtures(Rails.root.join('test', 'fixtures'), 'priorities')
