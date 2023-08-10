class CommentsController < ApplicationController

    before_action :set_record

    def create
        @comment = @record.comments.new(comment_params)

        if @comment.save
            redirect_to @record,notice: 'OK'
        else
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:content)
    end

end
