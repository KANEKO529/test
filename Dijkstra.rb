require "./priority_queue"

adjacency_list = [
    [[1, 4], [2, 7], [5, 9]],
    [[0, 4], [2, 2], [3, 6]],
    [[0, 7], [1, 2], [3, 3], [5, 5]],
    [[1, 6], [2, 3], [4, 5]],
    [[3, 5], [5, 7]],
    [[0, 9], [4, 7]],
]
node = 6
start = 0

#点の数だけ要素を用意。その点の最小コストを入れる配列
min_costs = Array.new(node,nil)

#探索リストserch_listに[初期コスト, 開始ノード番号]を追加
seach_list = PriorityQueue.new

#/step1
seach_list.insert([0,0])#[初期コスト, 開始ノード番号]


#/step2
while seach_list.size > 0
    #/step2
    cost, node = seach_list.extract#seach_listからcostとnodeを取り出す
    puts "cost #{cost}"
    puts "node  #{node}"
    next if not min_costs[node].nil?#min_costs[node] がnilでない→確定済みならNEXT(スキップ)

    min_costs[node] = cost
    #/step2

    break if not min_costs.any?(nil)#すべてのnodeの最小コストが確定したら終了

    adjacency_list[node].each do |next_node, next_cost|#←ここの順番は重要
     
        next if not min_costs[next_node].nil?#step2で確定したノードに対し、隣接するノードが確定済みならそのノードスキップ
    
        seach_list.insert([cost + next_cost, next_node])#seach_listに追加。更新ではない。同じノードに対して複数コストが存在する場合がある。どっちにしろextractで最小値を取り出してくれるので心配はない
    end
end

min_costs.each_with_index do |cost, idx|
    puts "#{start} から #{idx} までの最小コストは #{cost.to_s.rjust(2)} です"
end
