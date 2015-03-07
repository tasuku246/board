class AddForeignKeyPostsUsers < ActiveRecord::Migration
  def change
  end
  add_foreign_key :posts, :users
end
