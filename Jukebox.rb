class Jukebox
    attr_reader :choice1, :choice2
    def initialize(name)
        @name = name
        @choice1 = nil
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
        
        #create a list of each category for Mood & Occasion
        # @occasion_cat = [
        #     netflix, 
        #     dance, 
        #     board_game, 
        #     cosplay, 
        #     fancy_dinner, 
        #     hangin_garret
        # ]
        # @mood_cat = [
        #     on_top, 
        #     blue, 
        #     in_love, 
        #     sleep, 
        #     rage, 
        #     high
        # ]
    end

    def choose
        until [1, 2].include? @choice1
            puts "1. Mood \n2. Occasion "
            @choice1 = gets.to_i
            if ![1, 2].include? @choice1
                puts "Sorry, I couldn't read that input, please enter the number of your choice."
            end
        end
    end

    def choose_mood
        until (1..@moods.length).include? @choice2
            @moods.each do |item| puts item end
            @choice2 = gets.to_i
            if !(1..@moods.length).include? @choice2
                puts "Sorry, I couldn't read that input, please enter the number of your choice."
            end
        end
    end

    def choose_occ
        until (1..@occasions.length).include? @choice2
            @occasions.each do |item| puts item end
            @choice2 = gets.to_i
            if !(1..@occasions.length).include? @choice2
                puts "Sorry, I couldn't read that input, please enter the number of your choice."
            end
        end
    end

    def suggest_song

    end
end

jukebox = Jukebox.new "Tester"
jukebox.choose
choice1 = jukebox.choice1
if choice1 == 1
    jukebox.choose_mood
    puts jukebox.choice2
else choice1 == 2
    jukebox.choose_occ
    puts jukebox.choice2
end
