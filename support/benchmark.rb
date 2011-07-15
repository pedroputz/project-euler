def benchmark
  startTime = Time.new

  answer = yield

  endTime = Time.new

  puts '---------------------------'
  puts startTime.strftime("%H:%M:%S:%L - %Y-%m-%d")
  puts endTime.strftime("%H:%M:%S:%L - %Y-%m-%d")
  puts '---------------------------'
  puts 'time: ' + (endTime - startTime).to_s
  puts '---------------------------'
  puts 'answer: ' + answer.to_s
  puts '---------------------------'
end