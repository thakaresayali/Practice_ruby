@marble = ['R', 'G', 'B', 'Y']

def marble_pickup
for i in 1..10
  @marble[0].replace("Red")
  @marble[1].replace("Green")
  @marble[2].replace("Blue")
  @marble[3].replace("Yellow")

  @arr = 10.times.collect {@marble.to_a.shuffle.first}
  puts Hash[@arr.group_by{|x|x}.map{|x,y|[x,y.size]}]
  end
end
marble_pickup
