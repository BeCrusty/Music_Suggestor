require_relative "Jukebox"

# instantiate class
jukebox = Jukebox.new
# run greeting method
jukebox.greeting
# run choose method which selects mood or occasion
jukebox.choose
# tells us if prev choice was mood or occasion
choice1 = jukebox.choice1
# if mood, runs choose_mood method
if choice1 == 1
    jukebox.choose_mood
    # method choice2 returns mood chosen
    jukebox.choice2
# if occasion, runs choose_occ method
else choice1 == 2
    jukebox.choose_occ
    # method choice2 returns occasion chosen
    jukebox.choice2
end
# runs suggest_song method which looks at chosen mood/occasion and outputs song info
jukebox.suggest_song