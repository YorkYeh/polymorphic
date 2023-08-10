class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.timestamps
    end
    add_belongs_to :comments, :book, index: true
    add_belongs_to :comments, :product, index: true
  end
end
