class Book
	attr_accessor :title

	def initialize title
		@title = title
	end
	def borrow
		return "allow"
	end
end