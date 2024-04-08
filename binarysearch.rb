#二分探索法

def quick( a )
    sort(a, 0, a.size - 1)
end

def sort( a, first, last)#関数定
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

array = [11,3,9,13,24,17,6,1,12,2,5,7]#配列
p array
quick( array )
p array

x = 3
puts("x = " , x.to_s)
lo = 0
hi = array.size - 1

while( lo <= hi)
    k = (lo + hi) / 2 #探索範囲の中央インデックス

    if( x > array[k] )
        lo = k + 1
    elsif( x < array[k])
        hi = k - 1
    else
        puts("見つかりました。")
        break
    end
end

puts("見つかりませんでした")



