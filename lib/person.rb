require 'pry'

class Person

  attr_reader :name

########## instantiatiion

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  ########## attribute getters

  def bank_account
    @bank_account
  end

  def happiness
    @happiness
  end

  def hygiene
    @hygiene
  end

  ######## attribute setters

  def bank_account=(new_amount)
    @bank_account = new_amount
  end

  def happiness=(new_points)
      @happiness = new_points.clamp(0,10)
  end

  def hygiene=(new_points)
    @hygiene = new_points.clamp(0,10)
  end

  ##### non-attribute instance methods

  def happy?
    if self.happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if self.hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    self.bank_account+= salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene+= 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene-= 3
    self.happiness+=2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend_instance)
    self.happiness+=3
    friend_instance.happiness+=3
    "Hi #{friend_instance.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person_instance, topic)
    case topic
    when "politics"
      self.happiness-=2
      person_instance.happiness-=2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness+=1
      person_instance.happiness+=1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end

Muhammed = Person.new("Muhammed")
