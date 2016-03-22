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
romantic = Emotion.create(emotion_name: 'Romantic')
scared = Emotion.create(emotion_name: 'Scared')
relaxed = Emotion.create(emotion_name: 'Relaxed')

happycorgi1 = Corgi.create(img_url: "http://i.imgur.com/tdavu17.gif", quote: "Walk tall!", emotion: happy)
happycomment1 = Comment.create(text: "You are my inspiration!", commenter: 'Melissa', corgi: happycorgi1)
happycomment2 = Comment.create(text: "Thanks to you, I have plans to climb a mountain! I'll be so tall!", commenter: 'Dream Big', corgi: happycorgi1)
happycomment3 = Comment.create(text: 'Be careful not to fall!', commenter: 'Stubs McStumperson', corgi: happycorgi1)

happycorgi2 = Corgi.create(img_url: "http://i.imgur.com/18f7bdG.gif", quote: "Be ready for anything!", emotion: happy)
happycomment4 = Comment.create(text: 'Those are some excellent tappy toes.', commenter: 'Tap Dancer', corgi: happycorgi2)

happycorgi3 = Corgi.create(img_url: 'http://i.imgur.com/8ntn6qP.gif', quote: 'Stop and smell the roses', emotion: happy)

sadcorgi1 = Corgi.create(img_url: "http://i.imgur.com/wKjdA9G.jpg", quote: "I was meant for so much more than this.", emotion: sad)

sadcorgi2 = Corgi.create(img_url: "http://i.imgur.com/tpVL1.jpg", quote: "I thought you loved me", emotion: sad)
sadcomment1 = Comment.create(text: 'I do love you!', commenter: 'Guilty pet owner', corgi: sadcorgi2)

sadcorgi3 = Corgi.create(img_url: 'http://i.imgur.com/Ehawcgl.jpg', quote: 'No one will play with me!', emotion: sad)

angrycorgi1 = Corgi.create(img_url: "http://i.imgur.com/JEAmgJX.jpg", quote: "This is NOT the dog park", emotion: angry)
angrycorgi2 = Corgi.create(img_url: "http://i.imgur.com/RAFH7bf.gif", quote: "Cabbages!!!", emotion: angry)
angrycorgi3 = Corgi.create(img_url: 'http://i.imgur.com/S4yBFsk.jpg', quote: 'Expect a surprise in your shoes tomorrow.', emotion: angry)

romanticcorgi1 = Corgi.create(img_url: 'http://i.imgur.com/4QjPER9.jpg', quote: 'Show love at every chance you get', emotion: romantic)
romanticcorgi2 = Corgi.create(img_url: 'http://i.imgur.com/sRPyiLA.jpg', quote: "Hey ladies", emotion: romantic)

scaredcorgi1 = Corgi.create(img_url: 'http://i.imgur.com/NxOcIiI.jpg', quote: 'AAHHHH! What is that!?!?', emotion: scared)
scaredcorgi2 = Corgi.create(img_url: 'http://i.imgur.com/BQxoWh7.jpg', quote: 'No bath! No bath!', emotion: scared)

relaxedcorgi1 = Corgi.create(img_url: 'http://i.imgur.com/DltDqta.jpg', quote: "Maximum nap time", emotion: relaxed)
relaxedcorgi2 = Corgi.create(img_url: 'http://i.imgur.com/3PitT.jpg', quote: 'To relax at the beach, you must become one with the beach', emotion: relaxed)
