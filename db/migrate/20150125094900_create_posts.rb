class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :board_thread, null: false
      t.string :text, null: false
      t.string :post_user_name , null: false, default: 'no_name'


      t.timestamps
    end

    add_foreign_key :posts, :board_threads

  end
end
