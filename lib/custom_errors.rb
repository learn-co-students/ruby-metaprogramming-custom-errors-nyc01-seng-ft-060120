class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class !=Person #if the argument passed in is not an instance of the Person class
      begin #rescue | begin our error handling 
        raise PartnerError #present error below
      rescue PartnerError => error #creates an instances of the PartnerError class
        puts error.message #calls message method in PartnErerror
      end
    else
      person.partner = self
  end

  class PartnerError < StandardError #partner is inheriting from Standard
    def message 
      "you must give the get_married method an argument of an instance of the person class!"
      #describing and returning what happened
  end 

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z") #not an instance of Person class 
  #=> custom_errors.rb:11:in `get_married': Person::PartnerError (Person::PartnerError)
puts beyonce.name


