# Using each
array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]

puts "\n<<<==================================================>>>\n\n"

nc = 4
row = nil
array.each do |number|
  if array.index(number) % nc == 0
    # print current row
    # strart new row
    puts "#{row}" 
    row = "#{array[array.index(number)]}" + ", "
  else
    row += number.to_s() + ", "
    # print last row
    if array.index(number) == array.length() -1
      puts "#{row}"
    end
  end
end

puts "\n<<<==================================================>>>\n\n"

# Using each_slice in Enumerale
array.each_slice(4) { |group| puts "#{group[0]}, #{group[1]}, #{group[2]}, #{group[3]}" }

puts "\n<<<==================================================>>>\n\n"

# Simple grep thing
def simple_grep(filename, phrase)
  phrase_regex = Regexp.new(phrase)
  File.open(filename).each_with_index do |line, number|
    puts "#{number} #{line}" if line =~ phrase_regex
  end
end

simple_grep("file.txt", "unsure")

# Growing tree

