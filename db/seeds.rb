# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 posts = Post.create([

   { title: 'The Privacy Wars Are About to Get A Whole Lot Worse', author: 'dredmorbius', link: 'http://www.locusmag.com/Perspectives/2016/09/cory-doctorowthe-privacy-wars-are-about-to-get-a-whole-lot-worse/' , votes: 0 },

   { title: 'The new and improved Programming languages zoo', author: 'myst', link: 'http://math.andrej.com/2016/09/07/the-new-and-improved-programming-languages-zoo/' , votes: 0 },

   { title: 'A pilot who stole a secret Soviet fighter jet', author: 'alongtheflow', link: 'http://www.bbc.com/future/story/20160905-the-pilot-who-stole-a-secret-soviet-fighter-jet' , votes: 0 },

   { title: 'Pirates Plunder 4K Hateful Eight, but Did They Crack DCP?', author: 'dbcooper', link: 'https://torrentfreak.com/pirates-plunder-4k-hateful-eight-but-did-they-crack-dcp-160906/' , votes: 0 },

   { title: 'Support for Hello discontinued in Firefox 49', author: 'gerty', link: 'https://support.mozilla.org/en-US/kb/hello-status?as=u&utm_source=inproduct' , votes: 0 }

   ])
