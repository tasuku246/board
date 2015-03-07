class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :board_thread, null: false
      t.string :text, null: false
      t.references :user, null: false
      t.timestamps
    end

    add_foreign_key :posts, :board_threads
    #add_foreign_key :posts, :users
  end
end
