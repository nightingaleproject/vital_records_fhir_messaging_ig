
puts "input = #{ARGV[0]}"

# build a hash from the aliases file
IO.foreach(ARGV[0]) do |line|
   parts = line.split(" ")
   next if parts[0] == nil || parts[0] == "Page" || parts[0] == "Appendix"
   # test if uppercase
   if parts[0].match(/^[[:alpha:]]+$/) && parts[0].upcase == parts[0]
      puts "# #{line}"
   else
      name = line[line.index(" ")+1, line.length() -1].chomp
      puts "* ##{parts[0]} \"#{name}\""
   end
  end
