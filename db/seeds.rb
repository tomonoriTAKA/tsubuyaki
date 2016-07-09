# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create(name: 'ハチマンタイラー', email: 'hachiman@taira.com', password: 'hachimantaira', description: '八幡平の人です', image_url: 'http://www.h5.dion.ne.jp/~ratsel/jpg/tylar_cd_200.jpg')
