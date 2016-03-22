# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Emotion.destroy_all
Corgi.destroy_all
Comment.destroy_all

happy = Emotion.create(emotion_name: 'Happy')
sad = Emotion.create(emotion_name: 'Sad')
angry = Emotion.create(emotion_name: 'Angry')

happycorgi1 = Corgi.create(img_url: "http://i.imgur.com/tdavu17.gif", quote: "Walk tall!", emotion: happy)
happycomment1 = Comment.create(text: "You are my inspiration!", commenter: 'Melissa', corgi: happycorgi1)
happycomment2 = Comment.create(text: "Thanks to you, I have plans to climb a mountain! I'll be so tall!", commenter: 'Dream Big', corgi: happycorgi1)
happycomment3 = Comment.create(text: 'Be careful not to fall!', commenter: 'Stubs McStumperson', corgi: happycorgi1)

happycorgi2 = Corgi.create(img_url: "http://i.imgur.com/18f7bdG.gif", quote: "Be ready for anything!", emotion: happy)

sadcorgi1 = Corgi.create(img_url: "http://i.imgur.com/wKjdA9G.jpg", quote: "I was meant for so much more than this.", emotion: sad)
sadcorgi2 = Corgi.create(img_url: "http://i.imgur.com/tpVL1.jpg", quote: "I thought you loved me", emotion: sad)

angrycorgi1 = Corgi.create(img_url: "http://i.imgur.com/JEAmgJX.jpg", quote: "This is NOT the dog park", emotion: angry)
angrycorgi2 = Corgi.create(img_url: "http://i.imgur.com/RAFH7bf.gif", quote: "Cabbages!!!", emotion: angry)
