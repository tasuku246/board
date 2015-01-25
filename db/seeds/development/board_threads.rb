10.times do |n|
    BoardThread.create!(
        title: 'thread' + n.to_s
    )
end
