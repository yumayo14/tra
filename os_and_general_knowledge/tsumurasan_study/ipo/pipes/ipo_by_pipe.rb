reader, writer = IO.pipe
fork do
  reader.close
  10.times do
    # 力仕事
    writer.puts "Another one bites the dust"
  end
end

writer.close
while message = reader.gets
  $stdout.puts message
end

# fork do の部分で実質4つの実体が存在する
# 親側のwriter と 子側の reader は閉じる