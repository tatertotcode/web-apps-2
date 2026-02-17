# lib/tasks/update_elijah_post_image.rb
post = Post.find_by(author: "Elijah")
if post
  post.update(image: "https://as2.ftcdn.net/jpg/04/30/14/47/1000_F_430144770_534puH5rmxhQvsnvOxeAuWkCkhvklBYh.jpg")
  puts "Updated image for post by Elijah."
else
  puts "Post by Elijah not found."
end