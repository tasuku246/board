5.times do |n|
    b = BoardThread.create!(
        title: 'thread' + n.to_s
    )

    b.posts.create!(
        text: "post hoge1",
        post_user_name: 'user hoge'
    )
    b.posts.create!(
        text: "post hoge2",
        post_user_name: 'user hoge'
    )



end
