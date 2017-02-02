require 'byebug'

fishies = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']


#Sluggish Octopus -> O(n^2)

def longest_fishie_nested_loop(fishies)
  longest_fish = ""
  (0...fishies.length).each do |i|
    (i+1...fishies.length).each do |j|
      next if i == fishies.length - 1
      fish_compare = fishies[i].length <=> fishies[j].length
      # debugger
      if   fish_compare > 0
        longest_fish = fishies[i] if fishies[i].length > longest_fish.length
      elsif fish_compare < 0
        longest_fish = fishies[j] if fishies[j].length > longest_fish.length
      end
    end
  end
  longest_fish
end


#Dominant Octopus -> O(n)

def quick_sort(fishies)
  ref = fishies.first
  smaller = fishies.select { |fish| fish.length < ref.length }
  bigger = fishies.select { |fish| fish.length > ref.length }
  return fishies if fishies.length <= 1

  (quick_sort(smaller) + [ref] + quick_sort(bigger))
end

quick_sort(fishies).last

#Clever Octopus --. O(n)

def longest_fishie(fishies)
  longest_fish = ""

  fishies.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length
  end

  longest_fish
end

p longest_fishie(fishies)



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

#Dancing Octopus #SlowDance O(n)

def slow_dance(dir, tiles_array)

  tiles_array.each_index do |i|
    return i if dir == tiles_array[i]
  end
end

slow_dance("up", tiles_array)
slow_dance("right-down", tiles_array)


#Dancing Octpous #FastDance

new_tiles_data_structure = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down"=> 4,
  "left-down"=> 5,
  "left" => 6,
  "left-up"=> 7
}

def fast_dance(dir, new_tiles_data_structure) #wihtout iterating
  new_tiles_data_structure[dir]
end

p fast_dance("up", new_tiles_data_structure)
p fast_dance("right-down", new_tiles_data_structure)
