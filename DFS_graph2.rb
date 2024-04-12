#有向グラフにおいてDFSで探索していく（再帰関数）

def dfs(graph, v, seen)
    seen[v] = true
    graph[v].each do |next_v|
        unless seen[next_v]
            dfs(graph, next_v, seen)
        end
    end
end

adjacency_list = [
    [5],
    [3,6],
    [5,7],
    [0,7],
    [1,2,6],
    [],
    [7],
    [0],
]

node = 6
puts "スタート地点と目標地点を入力してください（A,B）"
input = gets
array = input.split(",")

seen = Array.new(node, false)

puts "Initial adjacency list:"
p adjacency_list

dfs(adjacency_list, array[0].to_i, seen)

if(seen[array[1].to_i]) 
    puts "Yes"
else puts "no"
end
