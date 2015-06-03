class Stack 

	attr_accessor :value
	attr_accessor :next

	def push value

		if (@value.eql? nil)
			@value = value
			@next = Stack.new
		else
			@next.push value
		end
	end

	def pop
		if (@value.eql? nil)
			"No Data on Stack"
		else
			if (@next.value.eql? nil)
				temp = @value
				@value = nil
				@next = nil
				return temp
			else
				@next.pop()
			end
		end
	end

end
