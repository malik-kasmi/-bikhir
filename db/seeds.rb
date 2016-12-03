# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
User.destroy_all

malik = User.create(email: "malik@gmail.com", password: "123456", phone: "1234567890")
reda = User.create(email: "reda@gmail.com", password: "123456", phone: "1234567890")
amine = User.create(email: "amine@gmail.com", password: "123456", phone: "1234567890")
latefa = User.create(email: "latefa@gmail.com", password: "123456", phone: "1234567890")
kawtar = User.create(email: "kawtar@gmail.com", password: "123456", phone: "1234567890")

url = "http://lorempixel.com/280/280/"

post_1 = Post.new(title: "voiture", description:"blablabla", category:"Vehicules", price:"1000")
post_1.owner = malik
post_1.remote_photo_url = url
post_1.save

post_2 = Post.new(title:"villa", description: "blablabla", category:"Immobilier", price:"3340")
post_2.owner = malik
post_2.remote_photo_url = url
post_2.save

post_3 = Post.new(title:"appartement" , description:"blablabla", category:"Immobilier", price:"234")
post_3.owner = malik
post_3.remote_photo_url = url
post_3.save

post_4 = Post.new(title:"tele", description:"pas chere", category:"Informatique et multimedia", price:"15453254")
post_4.owner = malik
post_4.remote_photo_url = url
post_4.save

post_5 = Post.new(title:"velo", description:"fixie neuf", category:"Autre", price:"245345")
post_5.owner = reda
post_5.remote_photo_url = url
post_5.save

post_6 = Post.new(title:"samsung", description:"moins cher", category:"Informatique et multimedia", price:"1343")
post_6.owner = amine
post_6.remote_photo_url = url
post_6.save

post_7 = Post.new(title: "tilifoun", description:"la bonne qualite", category:"Informatique et multimedia", price:"123")
post_7.owner = amine
post_7.remote_photo_url = url
post_7.save

post_8 = Post.new(title: "maison kbira", description:"3 pieces", category:"Immobilier", price:"1")
post_8.owner = latefa
post_8.remote_photo_url = url
post_8.save

post_9 = Post.new(title: "moto cool", description:"moto d'origine", category:"Vehicules", price:"254")
post_9.owner = kawtar
post_9.remote_photo_url = url
post_9.save

post_10 = Post.new(title: "voiture", description:"dacia", category:"Vehicules", price:"356")
post_10.owner = kawtar
post_10.remote_photo_url = url
post_10.save
