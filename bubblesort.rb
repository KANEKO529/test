#基本交換法
array = [6, 7, 3, 2, 5, 4, 1]#配列
array_size = array.size

array_size.times do |i|#繰り返し処理　for文
  (array_size - (i + 1)).times do |j|
    if array[j] > array[j + 1]
      escape = array[j]
      array[j] = array[j + 1]
      array[j + 1] = escape
    end
  end
end

p array