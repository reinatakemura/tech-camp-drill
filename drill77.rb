# my解答
def count_evens(ary)
  # puts (ary.select { |num| num % 2 == 0}).length
  # puts ary.count{ |num| num.even?}
  # puts ary.select(&:even?).count
  puts ary.select(&:even?).length  # &はメソッドにこれはブロック引数ですと伝える効果がある, :で始まるリテラルはSymbol
end

ary = [3, 4, 6, 9, 0]
count_evens(ary)

#####################################
# 解答
# def count_evens(nums)
#   count = 0
#   nums.each do |num|
#     if num.even?
#       count += 1
#     end     
#   end
#   puts count
# end

# nums =[3, 4, 6, 9, 0]
# count_evens(nums)
