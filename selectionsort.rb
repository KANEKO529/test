#基本選択法
#最小値をまず決めて比較していき最小値を更新
#最小値データと交換
array = [6, 7, 3, 2, 5, 4, 1]#配列
array_size = array.size

for x in 0..(array_size-1) do
    y = array_size - x -1
    puts("y=" + y.to_s)
end

for i in 0..array_size-1
    #puts("i = " + i.to_s)

    k = i#kは最小値のインデックス　最初は０

    #puts("k = " + k.to_s)
    for j in (i+1)..array_size-1
        if array[k] > array[j]
            k = j
        end
    end
    #puts("k' = " + k.to_s)
    temp = array[i]#ここで交換
    array[i] = array[k]
    array[k] = temp
end

p array
