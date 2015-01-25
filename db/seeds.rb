table_names = %w(board_threads)
table_names.each do |table_name|
  path = Rails.root.join('db','seeds',Rails.env,"#{table_name}.rb")
  puts path
  if File.exist?(path)
    puts "Creating #{table_name}...."
    require(path)
  end
end



