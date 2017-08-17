class Contact

  @@contacts =[]
  @@next_id = 1000


  def self.create(first_name, last_name, email, notes = "N/A")
    new_contact = Contact.new(first_name, last_name, email, notes = "N/A")
    @@contacts << new_contact
    new_contact
  end

  def self.all
    @@contacts
  end

  def self.find(id)
    @@contacts.select do |find|
      if id == find.id
        return find.full_name
      end
    end
  end

# INSTANCE VARIABLES HERE ----------
  def initialize(first_name, last_name, email, notes = "N/A")
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes

    @id = @@next_id
    @@next_id += 1
  end

# INSTANCE METHODS HERE ----------
  def id
    @id
  end

  def first_name
    @first_name
  end

  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name
    @last_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email
    @email
  end

  def email=(email)
    @email = email
  end

  def notes
    @notes
  end

  def notes=(notes)
    @notes = notes
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end


kaiser = Contact.create("Kaiser", "Chan", "kaiser@chan.com", "Always so serious")
diane = Contact.create("Diane", "Chang", "diane@chang.com", "The best")
celeste = Contact.create("Celeste", "Chan", "celeste@chan.com", "The cutest baby")

puts kaiser.id

# puts diane.inspect
# puts celeste.inspect
puts Contact.find(1002)
