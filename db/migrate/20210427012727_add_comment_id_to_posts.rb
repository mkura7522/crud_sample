class AddCommentIdToPosts < ActiveRecord::Migration[6.0]
  def up
    add_reference :comments, :post, null: false, index: true
  end

  def down
    remove_reference :comments, :post, index: true
  end
end
