class Puppy
	attr_accessor :name, :breed, :age

	def initialize(name, breed, age)
		@name = name
		@breed= breed
		@age = age
	end
end

#will also work like this....
#in app.rb.  =>   @puppy = Puppy.new(params)
#in puppy.rb.   
# => def initialize(info)
# => 	@name= info['name']
# => 	@breed= info['breed']
# =>  	@age= info['age']
#However, this test calls for three arguments so can't
#do it this way here.   