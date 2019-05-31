require_relative '../config/environment'
prompt = TTY::Prompt.new


def new_page
  3.times do puts""
  end
end


# login_page
new_page
puts "    Login below for access:"
name = prompt.ask('    Username:')
password = prompt.mask('    Password:')
if User.find_by(name: name) && User.find_by(password: password)
  puts "Welcome back #{name}"
  current_user = User.find_by(name: name)
else
current_user = User.create(name: name, password: password)
end
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

# page_four

new_page
puts "    Hmmm, looks like the stars are in your favor. Would you like your fortune told?".upcase
UserInterface.background_art
sleep(4)
puts `clear`

# page_five

new_page
only_yes = [
  'Yes',
  {name: 'No', disabled:''}
]
prompt.multi_select("CHOOSE YOUR FATE", only_yes,
help:"  (BAD THINGS WILL HAPPEN IF YOU REFUSE MY SERVICES)")
sleep(1)
puts`clear`

# page_six

new_page
puts ("Good choice. Let's begin!").upcase
UserInterface.background_art
sleep(3)
puts`clear`

# page_seven

new_page
puts "What would you like to know, darling?".upcase
UserInterface.background_art
sleep (2)
puts`clear`

# page_eight

new_page
choices = %w(Love Wealth Career)
user_choice = prompt.select("SELECT YOUR FORTUNE", choices)
sleep(1)
puts`clear`

# page_nine

new_page
puts "Hmmmmm...Now wait while I consult my crystal ball..............".upcase
UserInterface.background_art
sleep(2)
puts`clear`

# page_ten

new_page
if user_choice == "Love"
current_user.love
elsif user_choice == "Wealth"
current_user.wealth
elsif user_choice == "Career"
current_user.career
end
UserInterface.background_art
sleep(5)
puts`clear`

# page_eleven

new_page
hodor_choice = prompt.select("NOT HAPPY WITH YOUR FORTUNE, DO YOU WANT TO CHANGE IT?", %w(YES NO))
sleep(2)
puts`clear`

# page_twelve
new_page
if hodor_choice == "YES"
  last_fortune = current_user.fortunes.last
  last_fortune.update(quote: "YOUR NEW FUTURE IS BLEAK... ALL I SEE IS HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR HODOR")
  puts last_fortune.quote
end
UserInterface.background_art
sleep(4)
puts `clear`

# page_thirteen
new_page
delete_choice = prompt.select("DO YOU WANT TO DELETE THIS FORTUNE?", %w(YES NO))
sleep(2)
puts`clear`

if delete_choice == "YES"
  current_user.fortunes.last.destroy
end

# page_fourteen
UserInterface.background_art
sleep(2)
puts`clear`

# page_fifteen
new_page
all_fort = prompt.select("WOULD YOU LIKE TO SEE ALL OF YOUR FORTUNES?", %w(YES NO))
puts `clear`
if all_fort == "YES"
  puts current_user.fortune_quotes
end
UserInterface.background_art
sleep(5)
puts`clear`

# page_sixteen
new_page
UserInterface.last_page_logo
sleep(3)
puts `clear`
# final_pages
UserInterface.name_logo
UserInterface.crystal_ball_logo
