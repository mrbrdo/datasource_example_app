Comment.delete_all
Post.delete_all
Blog.delete_all
User.delete_all
ActiveRecord::Base.connection.execute("delete from sqlite_sequence where name IN ('comments', 'posts', 'blogs', 'users');")

user  = User.create!(email: "david@krko.com", first_name: "David", last_name: "Krmpotic")
user2 = User.create!(email: "miha@reko.net", first_name: "Miha", last_name: "Rekaric")

blog = user.blogs.create!(title: "PHP Tips and Tricks 2015")

2.times { |i|
  post = blog.posts.create!(author_id: user.id, title: "PHP Trick #{i}", content: "Parse error: parse error, unexpected T_PAAMAYIM_NEKUDOTAYIM")

  2.times { |j|
    post.comments.create!(author_id: user2.id, comment: "Pictures of your wife here foto.reko.net")
  }
}

blog = user2.blogs.create!(title: "Best Photo Filters 2014")

blog.posts.create!(author_id: user2.id, title: "Old Picture Look", content: "Check this best filter on foto.reko.net!")
