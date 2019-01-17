# Merge_sort
class Array
	def merge_sort(&prc)
		prc ||= Proc.new { |x,y| x <=> y }
		return self if self.length <= 1
		mid_idx = self.length / 2

		left = self[0...mid_idx].merge_sort(&prc)
		right = self[mid_idx..-1].merge_sort(&prc)

		Array.merge(left, right, &prc)
	end

	private

	def merge(left, right, &prc)
		output = []
		until left.empty? || right.empty?
			if prc.call(left[0], right[0]) == 1
				output << right.shift
			else
				output << left.shift
			end
		end
		output + left + right
	end
end

#-------------------------------------------------------------------------------
fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh',
 'fsh', 'fiiiissshhhhhh']
 
# O(n^2) time
def sluggish_octopus(fish_arr)
	fish_arr.each_index do |i|
		max_length = true
		(i+1).upto(fish_arr.length-1) do |j|
			max_length = false if fish_arr[i].length < fish_arr[j].length
		end
		return fish_arr[i] if max_length
	end
end

# O(n log n) time
def dominant_octopus(fish_arr)
	prc = Proc.new { |x,y| x <=> y }
	fish_arr.merge_sort(&prc)
end

# O(n) time
def clever_octopus(fish_arr)
	big_fish = fish_arr[0]

	fish_arr[1..-1].each do |fish|
		if big_fish < fish
			big_fish = fish
		end
	end
	big_fish
end


#-------------------------------------------------------------------------------
# Dancing Octopus

# O(n) time
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down",
 "left", "left-up" ]
def slow_dance(dir, tiles_array)
	tiles_array.each_with_index do |move, idx|
		return idx if dir == move
	end
end


#O(1) time
tiles_hash = {
	"up" => 0,
	"right-up" => 1,
	"right" => 2,
	"right-down" => 3,
	"down" => 4,
	"left-down" => 5,
	"left" => 6,
	"left-up" => 7,
}
def fast_dance(dir, tiles_hash)
	tiles_hash[dir]
end