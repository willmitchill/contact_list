class Application

  @in_menu = true

  def run
    show_main_menu
    input = gets.chomp.downcase
    evaluate_input(input)
  end

  private

  # Prints the main menu only
  def show_main_menu
    puts "Welcome to the app. What's next?"
    puts " new      - Create a new contact"
    puts " list     - List all contacts"
    puts " quit     - Exit Application"
    print "> "
  end

  def evaluate_input(input)
    while input != "quit"
      if input == "new"
        get_contact_details
      elsif input == "list"
        all
      elsif input == "find"
        find(index)
      elsif
        "This is not a valid input. Please try again"
      else input == "quit"
      end
    end
  end
end



def get_contact_details
  puts "Please enter the contact name:"
  name = gets.chomp
  puts "Please enter the contact email:"
  email = gets.chomp
  puts "Please enter the contact phone number:"
  phone_number = gets.chomp


   Contact.create(name, email, phone_number)
end
