# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

new = New.create([
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2,catId:4,likes:3 },
 	{ title: 'Otra noticia',description:'sdfsfdsfdsfd',content:'',link:'yo soy un link',userId:2,catId:4,likes:3 }
 ])