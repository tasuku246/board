c = ['policitcs','economy', 'IT', 'crime', 'whather']

user = User.create! :email => 'example@example.com', :password => 'password', user_name: 'no_name'

5.times do |n|
    b = BoardThread.create!(
        title: "thread#{n}",
        category: c[n]
    )
    50.times do |m|
        b.posts.create!(
            text: "post hoge#{m}",
            user_id: user.id
        )
    end
end
