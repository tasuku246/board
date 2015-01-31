5.times do |n|
    b = BoardThread.create!(
        title: "thread#{n}"
    )
    10.times do |m|
        b.posts.create!(
            text: "post hoge#{m}",
            post_user_name: "user#{m}"
        )
    end
end
