puts "Question 1."
puts "The tip for a 55 dollar meal with tax would be #{(55*1.13*1.15-55).round(2)}"
puts "Tax: #{(55*1.13).round(2)}"
puts "Total: #{(55*1.13*1.15).round(2)}"

puts "\nQuestion 2."
puts "fifty" + 1.to_s

puts "\nQuestion 3."
puts "45628 x 7839 = #{45628*7839}"
puts "\nQuestion 4."
puts "(TRUE&&FALSE)||NOT(FALSE)\n FALSE||TRUE\n #{(10 < 20 && 30 < 20) || !(10 == 11)}"