class Post < ActiveRecord::Base
  belongs_to :board_thread, class_name: 'BoardThread', foreign_key: 'board_thread_id'
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
end
