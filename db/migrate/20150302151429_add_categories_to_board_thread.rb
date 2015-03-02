class AddCategoriesToBoardThread < ActiveRecord::Migration
  def change
    add_column :board_threads, :category, :string, null:false
  end
end
