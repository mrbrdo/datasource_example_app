class Blog < ActiveRecord::Base
  belongs_to :owner, class_name: "User"
  has_many :posts

  datasource_module do
    loaded :latest_post_title, from: :array

    collection do
      def load_latest_post_title
        Post.where(blog_id: model_ids)
        .having("id = MAX(id)")
        .group(:blog_id)
        .pluck(:blog_id, :title)
      end
    end
  end

  def latest_post_title
    posts.order(:id).last.title
  end
end
