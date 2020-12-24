User.destroy_all()
Friendship.destroy_all()
Post.destroy_all()
Comment.destroy_all()

erick = User.create(username: "Erick")
justin = User.create(username: "Justin")
rico = User.create(username: "Rico")
vita = User.create(username: "Vita")

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