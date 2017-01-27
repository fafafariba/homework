#Exercise 1

class Stack
  def initialize(stack)
    @ivar = stack
  end

  def add(el)
    @ivar << el
  end

  def remove
    @ivar.pop
  end

  def show
    print stack
  end
end

#Exercise 2
class Queue
  def initialize
  end

  def enqueue(el)
    self.push(el)
  end

  def dequeue
    self.shift
  end

  def show
    print self
  end

end

#Exercise 3
class Map

end
