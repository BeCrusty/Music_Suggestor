# Create a music list
music_list = { 1 => "Happy by Pharell Williams", 2 => "Random song", 3 => "You Are the Sunshine of My Life by Stevie Wonder"}

# Output a welcome and ask for the users name
puts "Welcome to Ben & Mike's Music Suggestor"
puts "What can I call you?"
name = gets.chomp
running = true
puts "Welcome #{name}! Are we choosing music for a Mood, or for an Occasion? Input 1 for Mood or 2 for Occasion"
# Greet the user using their input name and present the first choice between mood & moment
while running
    puts "1. Mood \n2. Occasion "
    choice = gets.to_i

    # Diverge based on the user's choice and offer the next choice between the 6 categories
    if choice == 1
        puts "What kind of mood are you in right now?"
        puts "1. Happy \n2. Melancholy \n3. Romantic \n4. Energetic \n5. Sleepy \n6. Raging"
        next_choice = gets.to_i
        running = false
    elsif choice == 2
        puts "What are you doing right now?"
        puts "1. Alone Time \n2. Dance Battle \n3. Board Game Night \n4. BBQ with Garret \n5. Fancy Dinner Party \n6. Cosplay Party"
        next_choice = gets.to_i
        running = false
    else
        puts "Sorry, that input didn't seem right. We need the number of your selection"
        running = true
        # loop back around
    end
end

song_suggestion = music_list[next_choice]
puts "We suggest you listen to: '#{song_suggestion}'"

# Output their choice and generate a song selection from a stored list

# Output details about the song and a link to listen to it

# Ask if the user would like another song and loop back to the first choice, else exit