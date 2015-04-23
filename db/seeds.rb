# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all
User.delete_all

user = User.create([
	{email:'badsa@badsacorp.com',name:'badsa',manager:true,password:'12345678'},
	{email:'daniel@badsacorp.com',name:'daniel',manager:false,password:'12345678'},
	{email:'alonso@badsacorp.com',name:'alonso',manager:false,password:'12345678'},
	{email:'bayron@badsacorp.com',name:'bayron',manager:false,password:'12345678'},
	{email:'sebas@badsacorp.com',name:'sebas',manager:false,password:'12345678'}
	])

posts = Post.create([
	{ title: 'Una noticia1',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Deportes',votes:3,numComments:4,status:'vetoed'},
	{ title: 'Una noticia2',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Salud',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia3',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Salud',votes:3,numComments:4,status:'vetoed'},
	{ title: 'Una noticia4',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Sucesos',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia5',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'vetoed'},

	{ title: 'Una noticia6',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia7',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia8',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia9',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'pending'},
	{ title: 'Una noticia10',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia11',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'rejected'},
	{ title: 'Una noticia12',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'pending'},
	{ title: 'Una noticia13',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia14',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia15',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:2, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'},


	{ title: 'Una noticia10',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:4, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia11',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:4, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'rejected'},
	{ title: 'Una noticia12',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:5, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'pending'},
	{ title: 'Una noticia13',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:6, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia14',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:9, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'},
	{ title: 'Una noticia15',description:'jshdskjhdasjd',content:'soy el contenido',link:'',userId:10, date:'',category:'Entretenimiento',votes:3,numComments:4,status:'accepted'}
 ])

