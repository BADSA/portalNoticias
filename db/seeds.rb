# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all
Category.delete_all

posts = Post.create([
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',catId:4,votes:3,numComments:4,status:'online'},
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',catId:4,votes:3,numComments:4,status:'online'},
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',catId:4,votes:3,numComments:4,status:'online'},
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',catId:4,votes:3,numComments:4,status:'online'},
	{ title: 'Una noticia',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',catId:4,votes:3,numComments:4,status:'online'}
 ])


categories = Category.create([
	{ name: 'Deportes',description:'Descripcion Deportes'},
	{ name: 'Salud',description:'Descripcion Salud'},
	{ name: 'Tecnologia',description:'Descripcion Tecnologia'},
	{ name: 'Sucesos',description:'Descripcion Sucesos'},
	{ name: 'Entretenimiento',description:'Descripcion Entretenimiento'},
	{ name: 'Mundo',description:'Descripcion Mundo'},
	{ name: 'Ciencia',description:'Descripcion Ciencia'},
	{ name: 'Economia',description:'Descripcion Economia'}
])


