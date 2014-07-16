class Contact

  ## In-memory list of contacts
  @@contacts = []


  attr_accessor :name
  attr_accessor :email

  def initialize(name, email, phone_number)
    @name = name
    @email = email
    @phone_number = phone_number
  end

  def to_s
    # TODO: return string representation of Contact
  end

  ## Class Methods
  class << self
    def create(name, email, phone_number)
      @@contacts << Contact.new(name, email, phone_number)
      binding.pry


    end

    def find(index)
      # TODO: Will find and return contact by index
    end

    def all
      # TODO: Return the list of contacts, as is
    end
  end

end
