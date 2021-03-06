class Api::V1::PostsController < Api::V1::BaseController
  def index
    posts = policy_scope(Post)
    options = {
      include: [:user]
    }

    render json: PostSerializer.new(posts, options)
  end
end
