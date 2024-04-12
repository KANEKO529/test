#無向グラフにおいてDFSで探索していく （スタック）
#スタックだと配列の後ろからの出力となってしまう。大きい数字から参照される

def dfs(graph,seen,start)

    stack = [start]
    seen[start] = true
    until stack.empty?#stackが空でない限りループ
        temp = stack.pop
        puts "index : #{temp}"

        graph[temp].each do |neighbor|
            if !seen[neighbor] #seen[i] がfalseのときだけスタックに追加
                stack << neighbor
                seen[neighbor] = true
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

dfs(adjacency_list,seen,start)

