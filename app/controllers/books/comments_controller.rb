class Books::CommentsController < CommentsController
    private
    def set_record
        @record = Book.find(params[:book_id])
    end
end
