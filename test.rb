require 'CSV'
	data = CSV.read('data.csv', :headers=>true)
	$name = data["Name"]
	$score = data["Score"]
	$color = data["Color"]

	#1 Answer to question Number 1 
	puts "The student who has the highest score in the class is " + $name[$score.index($score.max)] + "."
	puts "The student who has the lowest score in the class is " + $name[$score.index($score.min)] + "."

	#2 Answer to question Number 2
	$score = $score.map { |i| i.to_i }
	$total = $score.inject{|sum,x| sum + x } / $score.size
	puts "the mean of all student scores are " + $total.to_s + "."


	#3 Answer to question Number 3
    $most=$color.group_by{|a| a }.sort_by{|a,b| b.size<=>a.size}.first[0]
    puts "the most common color is " + $most +"."
    def least_common_value(input)
  	input.group_by do |e|
    e
  	end.values.min_by(&:size).first
	end
    puts "the least common color is " + least_common_value($color) +"."

	#4 Answer to question Number 4
	$name.each do |part|
		puts (part<<" ").downcase.gsub(/[a-zA-Z] /){|fix| fix.upcase}.chomp #regex regular expression
	end