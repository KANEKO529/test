def dfs(graph, v, seen)
    seen[v] = true
    puts "Visited vertex #{v}"
    graph[v].each do |next_v|
        unless seen[next_v]
            dfs(graph, next_v, seen)
        end
    end
end

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

node = 6
start = 0

seen = Array.new(node, false)

puts "Initial adjacency list:"
p adjacency_list

puts "\nDepth First Search:"
dfs(adjacency_list, start, seen)