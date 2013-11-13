class CommentsController < ApplicationController
  def create

    @comment = Comment.create(params[:comment])
    @comment.user_id = current_user.id
    @comment.save

    # respond_to do |format|
    #   format.html
    #   format.json {render json: @comment}
    # end
    # redirect_to "/pins/#{@comment.pin_id}"
    # redirect_to root_path
    if @comment.commentable_type == "Pin"
        redirect_to "/pins/#{@comment.commentable_id}"
    elsif @comment.commentable_type == "Text_Pin"
        redirect_to "/text_pins/#{@comment.commentable_id}"
    end
  end

end
