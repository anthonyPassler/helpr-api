class Api::V1::PostsController < Api::V1::BaseController
  def index
    @posts = policy_scope(Post)

    render json: @posts.to_json(only: %i[id title])
  end
end
