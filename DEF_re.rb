#A,B,C,の三文字の組み合わせを考える
#深さ優先探索（DEF）を再帰関数を用いて実装
#→→格納順番が深さ優先探索である。ex)A,AA,AAA,AAB,AAC,AB,

$debug = true #'$debug'は真偽値を格納する変数

def recursive_dfs(patterns, string="")
  # 文字列を配列に格納する
  patterns << string unless string.empty?#文字列stringが空でないときすなわち一つ以上の文字があるとき、stringを配列patternsに追加する。
  #'<<'は追加

  # 停止条件: 文字列長が3文字になること
  if string.length == 3
    patterns << "<leaf>" if $debug
    return
  end

  # 分岐処理
  recursive_dfs(patterns, string+"A")
  recursive_dfs(patterns, string+"B")
  recursive_dfs(patterns, string+"C")
end

patterns = [] # 結果を格納する配列を用意しておく
recursive_dfs(patterns)
p patterns # 組み合わせの表示