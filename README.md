# Ben & Mike's Song Suggestor
### Github Repository
https://github.com/BeCrusty/Music_Suggestor

## Purpose

### Mission Statement

 *“Finding a song that fits your mood or occasion takes effort. 
 Imagine if Ben & Mike chose the music for you. With Ben & Mike’s Song Suggestor,
 you can listen to curated tunes in just a few clicks.”*
 
 ### Vision Statement

*"Our goal is to create an app that can grasp the nuances of a person’s mood, 
taste and activity, then build playlists that fit that moment 
while exposing them to new music.”*

## Feature Breakdown

### Current:

  * Greets the user and takes their name as input.
  * Offers a choice between ‘Mood’ and ‘Occasion’.
  * Offers a list of categories inside ‘Mood’ and ‘Occasion’.
  * Provides a song suggestion from the chosen category including: song name, artist and YouTube link.
  * Offers the chance to have another song suggestion.
 
 ### Short-term:
 
   * Provides a hyperlink to the song.
   * Improve the various outputs to include text effects and images.
   * Can choose another song from the current category or select a new category.
   * Saves song suggestions to a file that is named using the input #{name}.
   
### Long-term:
  
   * Provide a GUI and play songs inside the interface.
   * Outputs are spoken as well as written to improve accessibility.
   * Inputs can be taken by voice prompt to improve accessibility.
   * Utilize user files to build playlists and improve song suggestion.
   
 ## Instructions For Use
 
 ### Dependencies
 
   * colorize gem https://github.com/fazibear/colorize

### Installation

  1. Download ZIP file from repository https://github.com/BeCrusty/Music_Suggestor
  2. Extract ZIP file and run ‘index.rb’ in terminal.
  
### Customization

  1. User can input more songs into the database using the format seen below.
  ![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/App%20Screenshots/add_song_screenshot.png "")
  
### Usage & Screenshots

  1. Open your Unix-based terminal (App runs in Ruby, which is build for Linux or MacOS)
  2. Navigate to the location where you extracted the app directory.
  3. Inside the app directory run the command ‘$ ruby index.rb’
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/App%20Screenshots/ss2.png "")
  4. Following the prompts, enter your desired username.
  5. Make selections from the menus that are presented.
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/App%20Screenshots/ss3.png "")
  6. The terminal will provide categories for 'Mood' or 'Occasion'.
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/App%20Screenshots/ss4.png "")
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/App%20Screenshots/ss5.png "")
  7. A song with the artist's name and a YouTube link will be suggested based on the user’s category selection.
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/App%20Screenshots/ss6.png "")
  8. Finally, the user will be prompted to either choose another category or exit the app.
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/App%20Screenshots/ss7.png "")

## Details of Design & Planning Process

### Brainstorming

Our brainstorming process began with spitballing possible functions for a terminal app, seen in the first picture below. We made a selection from those ideas based on viability and interest and spent some time creating user stories and ideating to determine our direction. We then determined what choices we would provide to the user to maximize the functionality of the app and meet our aims, seen in the second picture below. 
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/Brainstorming%20Sessions/20190305_092232.jpg "")
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/Brainstorming%20Sessions/20190305_092303.jpg "")

 ### Problem Statement

Music apps such as Spotify and Mixcloud provide preset playlists and playlists generated from your listening habits. We think this limits the user. 

### User Stories

David wants a simple way to discover new music based on how he is feeling.
Karen wants to find a song that fits into an event.
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/Brainstorming%20Sessions/20190305_105935.jpg "")
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/Brainstorming%20Sessions/Pseudocode_a1.png "")

### Trello Boards
 
This is the final screenshot of our Trello Board. The rest of our screenshots can be seen in /docs/Trello Screenshots.  
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/Trello%20Screenshots/trello_4.png "")  

### Project Timeline
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/A1_project_timeline.png "")

### User Flow
![](https://github.com/BeCrusty/Music_Suggestor/blob/master/docs/User%20Flow/song_suggestor.png "")

### Test Results

Screenshots of early testing were saved. Final testing was carried out using the manual testing method and documented in two file named ‘Music_Suggestor Tests - Features’ and ‘Music_Suggestor Tests - Test Cases’. These screenshots, and the pdf versions of our excel spreadsheet are stored in /docs/Testing.

### Accessibility

In the current version of the app, it fails to account for a range of accessibility issues. Planned features include: voice recognition and audio outputs. These features will hopefully provide better accessibility for people with vision impairments and physical disabilities. 

### Possible Harm

There is currently no age restriction limit and a filter for explicit song and video material, therefore it is not reccomended for use by children under the age of 18 without supervision. 

### Societal Impact

The current music database is limited to Ben & Mike's suggestions. As such, it may not provide fair representation of the diversity in the music community. This could negatively affect society's prejudice regarding music artists. However, collaborative expanision of the music database could reverse this trend and broaden society's perspective on music.








