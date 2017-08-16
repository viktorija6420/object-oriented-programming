class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end


def quota
  50 + @experience/2
end

def deliver(start_address, end_address)
  delivery_houses = end_address - start_address + 1
  if delivery_houses <= @quota
    @earnings = delivery_houses * 0.25
    if delivery_houses < @quota
      @earnings -= 2
    end
  elsif delivery_houses > @quota
    overtime = delivery_houses - @quota
    @earnings = delivery_houses * 0.25 + overtime * 0.5
  end
end

def report
  "I'm Tommy, I've delivered #{@quota} papers and I've earned #{@earnings} so far!"
end

end
