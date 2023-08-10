class Products::CommentsController < CommentsController
    private
    def set_record
        @record = Product.find(params[:product_id])
    end
end
