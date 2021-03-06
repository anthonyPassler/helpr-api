class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.boolean :completed
      t.string :address

      t.timestamps
    end
  end
end
