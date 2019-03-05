# Create a list of songs for each category

on_top = ["Happy", "Pharrell Williams", "https://www.youtube.com/watch?v=ZbZSe6N_BXs"]

#create a list of each category for Mood & Occasion
mood_cat = [
    on_top, 
    blue, 
    in_love, 
    sleep, 
    rage, 
    high
]
occasion_cat = [
    netflix, 
    dance, 
    board_game, 
    cosplay, 
    fancy_dinner, 
    hangin_garret
]
#create a hash that contains Mood & Occasion lists
music_list = { :mood_cat => mood_cat, :occasion_cat => occasion_cat}


# Create an array of moods
moods = [
    "1. On top of the world", 
    "2. Blue", 
    "3. In love", 
    "4. Sleep deprived", 
    "5. Rage", 
    "6. A little high"
]
# Create an array of occasions
occasions = [
    "1. Netflix & Chill", 
    "2. Dance Battle", 
    "3. Fantasy Board Game Night", 
    "4. Cosplay Party", 
    "5. Fancy Dinner Party", 
    "6. Hangin' Out With Garret"
]
# Output a welcome and ask for the users name
puts "Welcome to Ben & Mike's Music Suggestor"
puts "What can we call you by?"
name = gets.chomp

# Greet the user using their input name and present the first choice between mood & moment
puts "Hello #{name}! Would you like to select a song for a Mood or an Occasion? Input 1 for Mood or 2 for Occasion"

# Opening a while loop to ensure correct input for first choice
# true = continue to run the loop, false = exit the loop
running = true
while running
    puts "1. Mood \n2. Occasion "
    choice = gets.to_i

    # Correct input will make the first or second condition true, if input is incorrect loop will begin again
    # true = continue to run the loop, false = exit the loop
    choosing = true
    if choice == 1
        puts "Are you feeling:"

        # Opening a while loop for moods to ensure correct input
        while choosing
            moods.each do |item| puts item end
            next_choice = gets.to_i

            # if statement ensures input is within parameters
            if next_choice > 0 and next_choice <= moods.length
                #because hashes start at 0, need a -1
                next_choice -= 1
                song_suggestion = music_list[:mood_cat][next_choice]
                choosing = false
            else
                # error message
                puts "Sorry, that input didn't seem right. We need the number of your selection."
                choosing = true
            end
        end
        running = false
    elsif choice == 2
        puts "What's the occasion?"

        # Opening a while loop for occasions to ensure correct input
        while choosing
            occasions.each do |item| puts item end
            next_choice = gets.to_i

            # if statement ensures input is within parameters
            if next_choice > 0 and next_choice <= occasions.length
                next_choice
                choosing = false
            else
                # error message
                puts "Sorry, that input didn't seem right. We need the number of your selection."
                choosing = true
            end
        end
        running = false
    else
        # error message
        puts "Sorry, that input didn't seem right. We need the number of your selection."
        running = true
        # loops back to Mood or Occasion
    end
end

puts "Ben & Mike suggest: '#{song_suggestion}'"

# Output their choice and generate a song selection from a stored list
# Output details about the song and a link to listen to it
# Ask if the user would like another song and loop back to the first choice, else exit