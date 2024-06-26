class PriorityQueue

    def initialize
      @data = []
    end
  
    def size
        return @data.size
    end

    # 要素追加
    def insert(array)
      @data.push(array)
      up_heap
    end
  
    # 要素取り出し
    def extract
      return @data.pop if @data.length <= 1
      target_element = @data[0]
      @data[0] = @data.pop
      down_heap
      target_element
    end
  
    private
  
    # ノード交換
    def swap(a, b)
      @data[a], @data[b] = @data[b], @data[a]
    end
  
    # 親 index
    def parent_idx(idx)
      idx / 2 + idx % 2 - 1
    end
  
    # 左の子 index
    def left_child_idx(idx)
      (idx * 2) + 1
    end
  
    # 右の子 index
    def right_child_idx(idx)
      (idx * 2) + 2
    end
  
    # 子が存在するか?
    def has_child?(idx)
      ((idx * 2) + 1) < @data.size
    end
  
    # 葉から根方向 ノード比較・交換
    def up_heap
        idx = @data.length - 1
        return if idx == 0
        parent_idx = parent_idx(idx)
        while (@data[parent_idx][0] > @data[idx][0])
          swap(parent_idx, idx)
          return if parent_idx == 0
          idx = parent_idx
          parent_idx = parent_idx(idx)
        end
    end
  
    # 根から葉方向 ノード比較・交換
    def down_heap
      idx = 0
      while (has_child?(idx))
        l_idx = left_child_idx(idx)
        r_idx = right_child_idx(idx)
        if @data[r_idx].nil?
          target_idx = l_idx
        else
          target_idx = @data[l_idx][0] <= @data[r_idx][0] ? l_idx : r_idx
        end
        if @data[idx][0] > @data[target_idx][0]
          swap(idx, target_idx)
          idx = target_idx
        else
          return
        end
      end
    end
  end
