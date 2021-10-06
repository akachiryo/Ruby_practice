print "Text?: "
text = gets.chomp
begin
  print "pattern?: "
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError =>  e
  puts "Invalid pattern: #{e.message}"
  retry
end
matches = text.scan(regexp)
if matches.size > 0
  puts "Mached: #{matches.join(" ")}"
else
  puts "Nothings mached."
end