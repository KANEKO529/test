#無向グラフにおいてBFSで探索していく。（キュー）


def bfs(graph,start,seen)
    queue = [start]
    seen[start] = true

    until queue.empty?
        temp = queue.shift
        puts "index : #{temp}"
    
        graph[temp].each do |i|
            if !seen[i] 
            queue << i
            seen[i] = true
            end
        end
    end
end


node = 6
start = 0

seen = Array.new(node, false)

adjacency_list = [
    [1,2,4],
    [0,3,8],
    [0,5],
    [1,7,8],
    [0,8],
    [2,6,8],
    [5,7],
    [3,6],
    [1,3,4,5]
]

puts "Initial adjacency list:"
p adjacency_list

seen = Array.new(node,false)

bfs(adjacency_list,start,seen)

    