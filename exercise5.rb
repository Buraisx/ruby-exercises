#Declarations
total_dist = 0
go_home = false
energy = 2
#Don't want to go home
while go_home==false
puts "Would you like to walk,run or go home?"
action = gets.chomp

#Actions that can be taken
	if action=="walk"
		energy += 1
		total_dist+=1
		puts "Distance from home is #{total_dist} Km\n\n"
	elsif energy >= 2 && action == "run"
		energy-=2
		total_dist+=5
		puts "Distance from home is #{total_dist} Km\n\n"
	elsif action =="go home"
		go_home = true
	else
		puts "you are incapable of doing this action.\n\n"
	end #if end
end #while end

puts "you have traveled a total of #{total_dist*2} Km."