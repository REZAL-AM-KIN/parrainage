# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

prepa = Prepa.create!(:nom => 'test', :ville => 'test')
boul = Boul.create!(:nom => 'test')
Pg.create!(:prepa => prepa, :boul => boul, :prenom => 'test', :nom => 'test', :bucque => 'test', :password => 'test', :fam => '1', :naissance => '111111', :password_confirmation => 'test')
