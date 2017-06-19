class Puppy

  NAME_SYM = :name
  BREED_SYM = :breed
  AGE_SYM = :age

  class << self
    def name_symbol
      return NAME_SYM
    end
    def breed_symbol
      return BREED_SYM
    end
    def age_symbol
      return AGE_SYM
    end
  end

  attr_accessor NAME_SYM, BREED_SYM, AGE_SYM

  def initialize(attributes)
     attributes.each {|key, value| self.send(("#{key}="), value)}
  end

end
