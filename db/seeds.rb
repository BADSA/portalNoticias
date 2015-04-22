# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all

posts = Post.create([
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Deportes',votes:3,numComments:4,status:'online'},
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Salud',votes:3,numComments:4,status:'online'},
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Salud',votes:3,numComments:4,status:'online'},
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Sucesos',votes:3,numComments:4,status:'online'},
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'online'}
 ])


