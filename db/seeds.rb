User.destroy_all()
Friendship.destroy_all()
Post.destroy_all()
Comment.destroy_all()

erick = User.create(username: "Erick", current_games: ["Cold War", "Cyberpunk"], profile_pic:  "https://images-na.ssl-images-amazon.com/images/I/71PGvPXpk5L._SL1500_.jpg")
justin = User.create(username: "Justin", current_games: ["Cyberpunk", "Spiderman"], profile_pic: "https://i.gadgets360cdn.com/large/ps5_digital_edition_1591912834512.jpeg")
rico = User.create(username: "Rico", current_games: ["Overwatch"], profile_pic: "https://i5.walmartimages.com/asr/9d8137d4-9ee2-4e78-950c-b402b7df7501.a5a045a24f56bb860857b38c213a5006.jpeg")
vita = User.create(username: "Vita", current_games: ["Animal Crossing", "Mario Kart"], profile_pic: "https://upload.wikimedia.org/wikipedia/commons/8/88/Nintendo-Switch-wJoyCons-BlRd-Standing-FL.jpg")


Friendship.create(friend_id: erick.id, friender_id: justin.id, confirmed: true)
Friendship.create(friend_id: justin.id, friender_id: rico.id, confirmed: true)
Friendship.create(friend_id: rico.id, friender_id: vita.id, confirmed: true)
Friendship.create(friend_id: vita.id, friender_id: erick.id, confirmed: true)

erickPost = Post.create(body: "Warzone anyone?", user_id: erick.id)
justinPost = Post.create(body: "Cyberpunk Steam coming soon!", user_id: justin.id)
ricoPost = Post.create(body: "GTA is still the best change my mind", user_id: rico.id)
vitapost = Post.create(body: "What are video games?", user_id: vita.id)

Comment.create(body: "Warzone is so fetch", user_id: vita.id, post_id: erickPost.id)
Comment.create(body: "You mean CyberBug", user_id: erick.id, post_id: justinPost.id)
Comment.create(body: "GTA is trash", user_id: justin.id, post_id: ricoPost.id)
Comment.create(body: "Video Games are love Video Games are life", user_id: rico.id, post_id: vitapost.id)