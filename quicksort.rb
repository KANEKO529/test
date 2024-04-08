#クイックソート

array = [6, 7, 3, 2, 5, 4, 1]#配列
p array

def sort( a, first, last)#関数定義

    pivot = a[(first + last) / 2]

    i = first

    j = last

    while(1)

        while(a[i] < pivot)#左から探索してpivotより大きい値があったら終了。小さい場合は大きい値が出るまで回す
            i = i+1
        end

        while(a[j] > pivot)#右から探索してpivotより小さい値があったら終了。大きい場合は小さい値が出るまで回す
            j=j-1
        end

        if ( i >= j)#かぶったら終了。→入れ替え
            break
        end

        temp = a[i]
        a[i] = a[j]
        a[j] = temp

    end

    if( first < i-1)
        sort( a, first, i-1)
    end

    if( last > j + 1)
        sort( a, j+1, last)
    end
end

sort(array , 0, array.size - 1)

p array

