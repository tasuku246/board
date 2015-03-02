c = ['policitcs','economy', 'IT', 'crime', 'whather']


5.times do |n|
    b = BoardThread.create!(
        title: "thread#{n}",
        category: c[n]
    )
    50.times do |m|
        b.posts.create!(
            text: "post hoge#{m}",
            post_user_name: "user#{m}"
        )
    end
end
