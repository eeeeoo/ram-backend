# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# testBoards = Board.create([
#   {user_id:1, x: 15.5, y:172, width:1000, height:700, top:172, bottom:872, right:1015.5, left:15.5}
# ])

testBoards = Board.create([
  {user_id:1, id:1, title: 'boredom'}
])

testImages = Image.create([
  {board_id:1, user_id:1, content:'"<div class="handle react-draggable react-draggable-dragged" style="touch-action: none; transform: translate(187px, 200px);"><div class="displayImage"><img src="http://i.maniadb.com/images/album/125/125468_f_2.jpg" alt=""></div></div>"'},
  {board_id:1, user_id:1, content:'"<div class="handle react-draggable react-draggable-dragged" style="touch-action: none; transform: translate(637px, 200px);"><div class="displayImage"><button class="deleteButton">X</button><img src="https://www.moma.org/media/W1siZiIsIjIzMDMyMyJdLFsicCIsImNvbnZlcnQiLCItcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=4aaa5715ca1fcb32" alt=""></div></div>"'}
])

# testImages = Image.create([
#   {src:'https://fanart.tv/fanart/music/06e99a1b-4020-4380-ab27-1a3e0c5e557c/cdart/marks--angles-4f57eed8109c7.png'}, 
#   {src:'https://images-na.ssl-images-amazon.com/images/I/61Uxg-SWExL._SX355_.jpg'},
#   {src:'https://www.moma.org/media/W1siZiIsIjIzMDMyMyJdLFsicCIsImNvbnZlcnQiLCItcmVzaXplIDIwMDB4MjAwMFx1MDAzZSJdXQ.jpg?sha=4aaa5715ca1fcb32'},
#   {src:'https://www.drmem.com/media/catalog/product/cache/1/image/600x600/9df78eab33525d08d6e5fb8d27136e95/D/D/DDR3LAPTOP.jpg'},
#   {src:'https://kinfolk.com/wp-content/uploads/2017/02/Kinfolk_Vol23_DieterRam_01-790x1024.jpg'}
# ])

# testTexts = Text.create([
#   {content:'Dieter Rams'},
#   {content:'an impenetrable confusion of forms, colours and noises'},
#   {content:'Random Access Memory is a form of computer data storage that stores data and machine code currently being used.'}
# ])
