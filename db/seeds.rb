user1 = User.create(name: "mostafa", dob: "1999-05-06", email: "mostafa@example.com", phone_number: "01140943934")
user2 = User.create(name: "marwan", dob: "1995-02-02", email: "marwan@example.com", phone_number: "0111111111")
post1 = Post.create(title: "First Post", content: "Content here", user_id: user1)
post2 = Post.create(title: "Second Post", content: "More content", user_id: user2)

EditorsPost.create(user: user2, post: post1) 
EditorsPost.create(user: user1, post: post2) 