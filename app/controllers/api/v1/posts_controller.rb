class Api::V1::PostsController < Api::V1::BaseController
  def index
    posts = policy_scope(Post)

    render json: PostSerializer.new(posts)
  end
end
