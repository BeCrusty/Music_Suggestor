# Create a list of songs for each category

on_top = [
    ["Happy", "Pharrell Williams", "https://www.youtube.com/watch?v=ZbZSe6N_BXs"],
    ["Hawaiian Roller Coaster Ride", "Mark Keali'i Ho'omalu, Kamehameha Schools Children's Chorus", "https://www.youtube.com/watch?v=KaLFZj3wPsc"]
]
blue = [
    ["Blue (Da Ba Dee)", "Eiffel 65", "https://www.youtube.com/watch?v=68ugkg9RePc"]
    ["Born To Die", "Lana Del Rey", "https://www.youtube.com/watch?v=ORnYNaTZGUU"]
]
in_love = [
    ["You Are The Sunshine Of My Life", "Stevie Wonder", "https://www.youtube.com/watch?v=3wZ_b_uUAdQ"]
    ["Just The Way You Are", "Bruno Mars", "https://www.youtube.com/watch?v=LjhCEhWiKXk&list=PLx3wWkQvD0wuLg05pvb6lwmpnzdW52bSH"]
]
sleep = [
    ["A Whole New World", "John McClung", "https://www.youtube.com/watch?v=-GN997853gc"]
    ["Pua Lilelehua", "Keola Beamer", "https://www.youtube.com/watch?v=s0WyqmvAg7o"]
]
rage = [
    ["Kamikaze", "Eminem", "https://www.youtube.com/watch?v=FhF9RwkHAJw"]
    ["Angel Of Death", "Slayer", "https://www.youtube.com/watch?v=K6_zsJ8KPP0"]
]
high = [
    ["Three Little Birds", "Bob Marley", "https://www.youtube.com/watch?v=LanCLS_hIo4"]  
    ["Party in My Tummy", "Yo Gabba Gabba!", "https://www.youtube.com/watch?v=6Os-CACRwM8"]
]


netflix = [
    ["Can't Get Enough Of Your Love Baby", "Barry White", "https://www.youtube.com/watch?v=x0I6mhZ5wMw"]
    ["My Cherie Amour", "Stevie Wonder", "https://www.youtube.com/watch?v=NW0YcO5P3OM"]
]
dance = [
    ["It's Tricky", "Run-DMC", "https://www.youtube.com/watch?v=l-O5IHVhWj0"]
    ["Boogie Shoes", "K.C. and Sunshine Band", "https://www.youtube.com/watch?v=6m47EQtAMzI"]
]
board_game = [
    ["Concerning Hobbits", "Howard Shore", "https://www.youtube.com/watch?v=0gLd7rpBJlY"]
    ["Carmina Burana", "Carl Orff", "https://www.youtube.com/watch?v=GXFSK0ogeg4"]
]
cosplay = [
    ["Sailor Moon Theme", "Nicole and Brynne Price", "https://www.youtube.com/watch?v=5txHGxJRwtQ"]  
    ["Pokémon Theme", "Jason Paige", "https://www.youtube.com/watch?v=rg6CiPI6h2g"]
]
fancy_dinner = [
    ["Impromptu in G flat major D.899, Op. 90 - III. Andante mosso", "Franz Schubert", "https://www.youtube.com/watch?v=Nt33K-HsOHA"]
    ["Piano Concerto No. 21 in C major, K. 467", "Wolfgang Amadeus Mozart", "https://www.youtube.com/watch?v=CVKpvD3X6EM"]
]
hangin_garret = [
    ["Southern Nights", "Glen Campbell", "https://www.youtube.com/watch?v=7wOUFo4Lwf8"]
    ["I Just Want To Dance With You", "George Strait", "https://www.youtube.com/watch?v=HxxhNAyj3QQ"]
]

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

# Create an array of moods to print
moods = [
    "1. On top of the world", 
    "2. Blue", 
    "3. In love", 
    "4. Sleep deprived", 
    "5. Rage", 
    "6. A little high"
]
# Create an array of occasions to print
occasions = [
    "1. Netflix & Chill", 
    "2. Dance Battle", 
    "3. Fantasy Board Game Night", 
    "4. Cosplay Party", 
    "5. Fancy Dinner Party", 
    "6. Hangin' Out With Garret"
]
# Output a welcome and ask for the users name
puts "Welcome to Ben & Mike's Music Suggestor!"
puts "What can we call you by?"
name = gets.chomp

# Greet the user using their input name and present the first choice between mood & moment
puts "Hello #{name}! Would you like to select a song for a Mood or an Occasion? Input 1 for Mood or 2 for Occasion"

=begin
Opening a while loop to ensure correct input for first choice
true = continue to run the loop, false = exit the loop
input 1 opens Mood categories in the if statement
input 2 open Occasion categories in the elsif statement
else statement catches errors
=end

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
                song_suggestion = mood_cat[next_choice]
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
                next_choice -= 1
                song_suggestion = occasion_cat[next_choice]
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

song_name = song_suggestion[0]
song_artist = song_suggestion[1]
song_link = song_suggestion[2]

puts "Ben & Mike suggest: #{song_name} by #{song_artist}. You can listen to it here: #{song_link}"



# Output their choice and generate a song selection from a stored list
# Output details about the song and a link to listen to it
# Ask if the user would like another song and loop back to the first choice, else exit