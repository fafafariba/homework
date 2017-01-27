#Exercise 1

class Stack
  def initialize
    @ivar = []
  end

  def add(el)
    @ivar << el
  end

  def remove
    @ivar.pop
  end

  def show
    print @ivar
  end
end

#Exercise 2

class Queue
  def initialize
    @quarray=[]
  end

  def enqueue(el)
    @quarray.push(el)
  end

  def dequeue
    @quarray.shift
  end

  def show
    print @quarray
  end

end

#Exercise 3

class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    @map << [key, value] if lookup(key).empty?
  end

  def lookup(key)
    @map.select { |el| el[0] == key }
  end

  def remove(key)
    @map.delete_if { |el| el[0] == key }
  end
end
