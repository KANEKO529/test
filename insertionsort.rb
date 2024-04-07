#基本挿入法
#最小値をまず決めて比較していき最小値を更新
#最小値データと交換
array = [6, 7, 3, 2, 5, 4, 1]#配列
array_size = array.size

for i in 1..(array_size-1) do
    j = i - 1
    while j >= 0 do
        if array[j] > array[j+1]
            temp = array[j+1] 
            array[j+1] = array[j]
            array[j] = temp

            j = j-1
        else 
            j = -1
        end
    end
end

p array


