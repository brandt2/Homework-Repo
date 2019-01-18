class LRUCache
	def initialize(size)
		@size = size
		@cache = []
	end

	def count
		@cache.count
	end

	def add(el)
		if @cache.length == size && @cache.include?(el)
			@cache.delete(el)
			@cache << el
		elsif @cache.length == size
			@cache.shift
			@cache << el
		else
			@cache << el
		end
	end

	def show
		puts @cache
	end

end