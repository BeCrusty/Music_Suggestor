class Jukebox
    attr_reader :choice1, :choice2
    def initialize
        @user_name = nil

        # Becomes 1 or 2 when user chooses mood or occasion, is nil so it can become a variable
        @choice1 = nil

        # Becomes 1-6 when user chooses category under mood/occasion, is nil so it can become a variable
        @choice2 = nil

        # Create an array of moods to print
        @moods = [
            "1. On top of the world", 
            "2. Blue", 
            "3. In love", 
            "4. Sleep deprived", 
            "5. Rage", 
            "6. A little high"
        ]

        # Create an array of occasions to print
        @occasions = [
            "1. Netflix & Chill", 
            "2. Dance Battle", 
            "3. Fantasy Board Game Night", 
            "4. Cosplay Party", 
            "5. Fancy Dinner Party", 
            "6. Hangin' Out With Garret"
        ]
        
        # A long series of arrays containing the songs associated with each mood or occasion
        # Moods
        on_top = [
            ["Happy", "Pharrell Williams", "https://www.youtube.com/watch?v=ZbZSe6N_BXs"],
            ["Hawaiian Roller Coaster Ride", "Mark Keali'i Ho'omalu, Kamehameha Schools Children's Chorus", "https://www.youtube.com/watch?v=KaLFZj3wPsc"]
        ]
        blue = [
            ["Blue (Da Ba Dee)", "Eiffel 65", "https://www.youtube.com/watch?v=68ugkg9RePc"],
            ["Born To Die", "Lana Del Rey", "https://www.youtube.com/watch?v=ORnYNaTZGUU"]
        ]
        in_love = [
            ["You Are The Sunshine Of My Life", "Stevie Wonder", "https://www.youtube.com/watch?v=3wZ_b_uUAdQ"],
            ["Just The Way You Are", "Bruno Mars", "https://www.youtube.com/watch?v=LjhCEhWiKXk&list=PLx3wWkQvD0wuLg05pvb6lwmpnzdW52bSH"]
        ]
        sleep = [
            ["A Whole New World", "John McClung", "https://www.youtube.com/watch?v=-GN997853gc"],
            ["Pua Lilelehua", "Keola Beamer", "https://www.youtube.com/watch?v=s0WyqmvAg7o"]
        ]
        rage = [
            ["Kamikaze", "Eminem", "https://www.youtube.com/watch?v=FhF9RwkHAJw"],
            ["Angel Of Death", "Slayer", "https://www.youtube.com/watch?v=K6_zsJ8KPP0"]
        ]
        high = [
            ["Three Little Birds", "Bob Marley", "https://www.youtube.com/watch?v=LanCLS_hIo4"] , 
            ["Party in My Tummy", "Yo Gabba Gabba!", "https://www.youtube.com/watch?v=6Os-CACRwM8"]
        ]
        
        #  Occasions
        netflix = [
            ["Can't Get Enough Of Your Love Baby", "Barry White", "https://www.youtube.com/watch?v=x0I6mhZ5wMw"],
            ["My Cherie Amour", "Stevie Wonder", "https://www.youtube.com/watch?v=NW0YcO5P3OM"]
        ]
        dance = [
            ["It's Tricky", "Run-DMC", "https://www.youtube.com/watch?v=l-O5IHVhWj0"],
            ["Boogie Shoes", "K.C. and Sunshine Band", "https://www.youtube.com/watch?v=6m47EQtAMzI"]
        ]
        board_game = [
            ["Concerning Hobbits", "Howard Shore", "https://www.youtube.com/watch?v=0gLd7rpBJlY"],
            ["Carmina Burana", "Carl Orff", "https://www.youtube.com/watch?v=GXFSK0ogeg4"]
        ]
        cosplay = [
            ["Sailor Moon Theme", "Nicole and Brynne Price", "https://www.youtube.com/watch?v=5txHGxJRwtQ"],
            ["Pokémon Theme", "Jason Paige", "https://www.youtube.com/watch?v=rg6CiPI6h2g"]
        ]
        fancy_dinner = [
            ["Impromptu in G flat major D.899, Op. 90 - III. Andante mosso", "Franz Schubert", "https://www.youtube.com/watch?v=Nt33K-HsOHA"],
            ["Piano Concerto No. 21 in C major, K. 467", "Wolfgang Amadeus Mozart", "https://www.youtube.com/watch?v=CVKpvD3X6EM"]
        ]
        hangin_garret = [
            ["Southern Nights", "Glen Campbell", "https://www.youtube.com/watch?v=7wOUFo4Lwf8"],
            ["I Just Want To Dance With You", "George Strait", "https://www.youtube.com/watch?v=HxxhNAyj3QQ"]
        ]

        # create an array with each category for Mood & Occasion
        @mood_cat = [
            on_top, 
            blue, 
            in_love, 
            sleep, 
            rage, 
            high
        ]
        @occasion_cat = [
            netflix, 
            dance, 
            board_game, 
            cosplay, 
            fancy_dinner, 
            hangin_garret
        ]
        @list_choice = [@mood_cat, @occasion_cat]
    end
    # greets user in terminal and asks for name
    def greeting
        puts "Welcome to Ben & Mike's Song Suggestor!"
        puts "What can we call you by"
        # user_name = user input
        @user_name = gets.chomp
    end

    def choose
        # until loops until @choice1 = 1 or 2
        # inside the loops it asks the user to choose 1 or 2
        puts "Hello #{@user_name}! Would you like to select a song for a Mood or an Occasion? Input 1 for Mood or 2 for Occasion"
        until [1, 2].include? @choice1
            puts "1. Mood \n2. Occasion "
            @choice1 = gets.to_i

            # If the user has input something other than 1 or 2 it will print this error statement
            if ![1, 2].include? @choice1
                puts "Sorry, I couldn't read that input, please enter the number of your choice."
            end
        end
    end

    def choose_mood
        # until @choice2 = 1 to length of moods(6), keep looping
        # Inside the loops it keeps asking the user to select from a numbered list
        puts "Are you feeling:"
        until (1..@moods.length).include? @choice2
            @moods.each do |item| puts item end
            @choice2 = gets.to_i

            # if choice2 != 1 to length of moods(6) print err msg
            if !(1..@moods.length).include? @choice2
                puts "Sorry, I couldn't read that input, please enter the number of your choice."
            end
        end
    end

    # until @choice2 = 1 to length of occasions(6), keep looping
    # Inside the loops it keeps asking the user to select from a numbered list
    def choose_occ
        puts "What's the occasion?"
        until (1..@occasions.length).include? @choice2
            @occasions.each do |item| puts item end
            @choice2 = gets.to_i

            # if choice2 != 1 to length of moods(6) print err msg
            if !(1..@occasions.length).include? @choice2
                puts "Sorry, I couldn't read that input, please enter the number of your choice."
            end
        end
    end

    def suggest_song
        # receive mood or occasion choice, -1 to make it an arr index
        @choice1 -= 1
        # receive mood/occ categories choice, -1 to make it an arr index
        @choice2 -= 1
        # category variable = mood/occasion arr
        category = @list_choice[@choice1]
        # songs variable = moods/occasions arrays
        songs = category[@choice2]
        # song variable looks inside selected mood_cat or occasion_cat and picks a song
        song = songs[(rand() * songs.length).to_i]
        puts "Ben & Mike suggest: #{song[0]} by #{song[1]}. You can listen to it here: #{song[2]}"
    end
end

