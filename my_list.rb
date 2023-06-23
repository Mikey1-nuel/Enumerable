require './enumerable'

class MyList
  def initialize(*ary)
    @list = ary
  end

  def each
    @list.length.times do |index|
      yield(@list[index])
    end
  end
  include MyEnumerable
end

list = MyList.new(1, 2, 3, 4)
p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })
p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })

p(list.filter(&:even?))
p list.filter
