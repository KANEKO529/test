$debug = true

def iterative_bfs(patterns)
    # キューとなる配列を用意し、初期状態である空文字列を格納する
    queue = [""]
    until queue.empty?#キューが空になるまでuntilループをする
        
      # キューから1つ取り出す（先頭から取り出すのでshiftを使う）
      string = queue.shift
  
      # 文字列を配列に格納する
      patterns << string unless string.empty?
  
      # 停止条件: 文字列長が3文字になること
      if string.length == 3
        patterns << "<leaf>" if $debug
      else
        # 分岐処理
        queue << string+"A"
        queue << string+"B"
        queue << string+"C"
      end
    end
  end
  
  patterns = [] # 結果を格納する配列を用意しておく
  iterative_bfs(patterns)
  p patterns # 組み合わせの表示