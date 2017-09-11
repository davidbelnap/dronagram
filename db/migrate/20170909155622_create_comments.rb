class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :pro_image
      t.string :user_name
      t.string :comment
      t.belongs_to :user
      t.belongs_to :post

      t.timestamps
    end
  end
end
