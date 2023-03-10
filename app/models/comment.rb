class Comment < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post
  after_save :count_updater

  def count_updater
    post = Post.find_by(id: post_id)
    post.comments_counter = Comment.where(post_id:).count
    post.save
  end
end
