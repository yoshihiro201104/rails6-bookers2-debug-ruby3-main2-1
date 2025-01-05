class BookCommentsController < ApplicationController
  def create
    book = Book.find(paramas[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_id = book.id
    comment.save
    redirect_to request.referer
  end

  def destroy 
    comment = BookComment.find(paramas[:id])
    comment.destroy
  end

  pravate

  def book_comment_params
    paramas.require(:book_comment).permit(:comment)
  end
end
