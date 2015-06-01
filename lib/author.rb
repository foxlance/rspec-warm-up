class Author
	attr_accessor :books 

	def initialize books: []
		@books = books
	end

	def add_book title
		@books << title
	end
end