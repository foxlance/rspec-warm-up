class Book
	attr_accessor :title

	def initialize title
		@title = title
	end
	def borrow
		return "allow"
	end
	def is_borrowed?
		false
	end
end