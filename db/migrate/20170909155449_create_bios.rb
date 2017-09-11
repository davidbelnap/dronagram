class CreateBios < ActiveRecord::Migration[5.0]
  def change
    create_table :bios do |t|
      t.string :description
      t.string :pro_image
      t.belongs_to :user

      t.timestamps
    end
  end
end
