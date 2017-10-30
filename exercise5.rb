#POST-APOCALYPTIC SURVIVAL HORROR

#Declarations
total_dist = 0
go_home = false
energy = 4
satiety = 10
sanity = 1
death = false
karma = 11


puts "Energy: #{energy}"
puts "Satiety: #{satiety}"
#Don't want to go home
while go_home==false &&death == false
puts "\nWould you like to walk, run, eat, rest, or go home?"
action = gets.chomp
satiety -= 1
	
	
	
	#Actions that can be taken
	if action=="walk"
		energy += 1
		satiety -= 1
		total_dist+=1
		if sanity == 0
			total_dist -= 0.5
			puts "you drag your foot while walking like a zombie"
		end
		puts "Distance from home is #{total_dist} Km"
	elsif energy >= 2 && action == "run"
		energy-=2
		satiety-= 2
		total_dist+=5
		if sanity ==0
			total_dist-=3
			puts "you trip and fall every few seconds"
		end
		puts "Distance from home is #{total_dist} Km"
	elsif action =="go home"
		if sanity == 0
			puts "You go to your village and try eating the nearest child.  You are shot dead."
			death = true
		else
			go_home = true
		end
	elsif action =="rest"
		energy+=4
		if sanity == 0
			puts "you sleep in the middle of the road."
		else
			puts "You find a place to sleep under a tree."
		end
		
	elsif action == "eat"
		if sanity==0
			puts "You hear the sound of an animal several hundred kilometers away"
			puts "You sprint towards the noise with the grin of a jacked up druggie..."
			puts "Your Karma has lowered."
			karma -=5
			satiety += 5
			energy -=3
		else
			puts "you eat some grass and nuts on the fields"
			energy-=1
			satiety += 2
		end
	else
		puts "you are unable to #{action}."
	end #if end

	#Energy checker
	if energy <= 0
		puts "you collapse and few dozen stray cats and mice eat you alive."
		death = true
	elsif energy <= 2
		puts "you are on the verge of collapsing."
	elsif energy <= 5
		puts "You are feeling very tired."
	end

	#satiety checker
	if satiety <= -10
		puts "You are too hungry to do anything.  You eat yourself.  You have died."
		death ==true
	elsif satiety <= 0
		puts "your sanity drops and you become a senseless animal"
		sanity = 0
	elsif satiety <=2
		puts "you are famished, you have to eat something now."
	elsif satiety <= 5
		puts "You are feeling very hungry."
	end
	puts "Energy: #{energy}"
	puts "Satiety: #{satiety}"

	if karma <= 0
		puts "You are run over by a truck."
		death = true
	end
end #while end

puts "you have traveled a total of #{total_dist*2} Km."