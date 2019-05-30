require_relative '../config/environment'
prompt = TTY::Prompt.new
@current_user = nil

def new_page
  3.times do puts""
  end
end

# def choose_fortune(user_choices)
#   user_choices.each do |choice|
#     if choice == "Love"
#       User.love
#     elsif
#       choice == "Wealth"
#       User.wealth
#     else
#       User.career
#     end
#   end
# end


# teaser_page
new_page
puts "    Login below for access:"
prompt.ask('    Username:')
prompt.ask('    Password:')
sleep(1)
puts`clear`

# page_one

UserInterface.name_logo
sleep(1)
UserInterface.crystal_ball_logo
sleep(3)
puts `clear`

# page_two

new_page
puts "    Welcome, my name is Esmeralda.".upcase
UserInterface.background_art
sleep(3)
puts `clear`

# page_three

new_page
puts "    I am 100% proven psychic. I have read for the rich and famous.".upcase
UserInterface.background_art
sleep(4)
puts `clear`


# page_five

new_page
puts "    Hmmm, looks like the stars are in your favor. Would you like your fortune told?".upcase
UserInterface.background_art
sleep(4)
puts `clear`


# page_six

new_page

only_yes = [
  'Yes',
  {name: 'No', disabled:''}
]
prompt.multi_select("CHOOSE YOUR FATE", only_yes,
help:"  (BAD THINGS WILL HAPPEN IF YOU REFUSE MY SERVICES)")
sleep(1)
puts`clear`

# page_seven

new_page
puts ("Good choice. Let's begin!").upcase
UserInterface.background_art
sleep(3)
puts`clear`

# page_eight

new_page
puts "What would you like to know, darling?".upcase
UserInterface.background_art
sleep (2)
puts`clear`

# page_nine

new_page
choices = %w(Love Wealth Career)
user_choices = prompt.multi_select("SELECT YOUR FORTUNE", choices)
# choose_fortune(user_choices)
sleep(1)
puts`clear`

# page_ten

new_page
puts "Hmmmmm...Now wait while I consult my crystal ball..............".upcase
UserInterface.background_art
sleep(2)
puts`clear`

# fortune
#



# page_eleven

new_page
prompt.select("WHAT WOULD YOU LIKE TO DO NEXT?", %w(Save Edit Delete))
sleep(1)
puts`clear`

# page_twelve
UserInterface.background_art
sleep(2)
puts`clear`

# page_thirteen
new_page
prompt.select("WOULD YOU LIKE TO SEE ALL OF YOUR FORTUNES?", %w(YES NO))
