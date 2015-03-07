module PostsHelper



  def mention_anchor text,board_thread_id
    ## >>number があったらリンクに変換
    mention_to = text.match(/\A>>[0-9]+/).to_s.sub(">>","")
    text.sub(/\A>>[0-9]+/,"<a href=\"/board_threads/#{board_thread_id}/posts/#{mention_to}\">#{mention_to}</a>")
  end
end
