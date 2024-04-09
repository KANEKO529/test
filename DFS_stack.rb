#A,B,C,の三文字の組み合わせを考える
#深さ優先探索をスタックを用いて実装
#→→格納順番が深さ優先探索である。ex)A,AA,AAA,AAB,AAC,AB,

$debug = true

def iterative_dfs(patterns)
  # スタックとなる配列を用意し、初期状態である空文字列を格納する
  stack = [""]
  until stack.empty?#文字列stackが空でないときループ

    # スタックから1つ取り出しstringに追加（末尾から取り出すのでpopを使う）
    string = stack.pop

    # 文字列を配列に格納する
    patterns << string unless string.empty?

    # 停止条件: 文字列長が3文字になること
    if string.length == 3
      patterns << "<leaf>" if $debug
    else
      # 分岐処理
      stack << string+"C"
      stack << string+"B"
      stack << string+"A"
    end
  end
end

patterns = [] # 結果を格納する配列を用意しておく
iterative_dfs(patterns)
p patterns # 組み合わせの表示