GITの動作を確認するためのプロジェクトなので特に何かを作るわけではない。
ただ、せっかくなのでELPSのHowToを見ながらファイルを作ってみようと思う。
Emacs Lisp入門を読んでみる

アトムとリスト
1. これ以上分解できないものがアトム
2. ０個以上のアトムを（）で囲んだものがリスト

#+begin_src lisp

  1037 ;number
  symbol-example ; symbolの例
  "this is string" ; stringの例

  (1 2 3 4 5) ; numberからなるリスト
#+end_src

アトムの評価、変数
#+begin_src lisp

  fill-column ; これを評価すると７０を返す
#+end_src

リストの評価
#+begin_src lisp
  (+ 1 2) ; これを評価すると３を返す
  (message "Hello World!") ; これを評価するとHello Worldを返し、ディスプレイに表示
  (1 2 3 4 5) ; これをひょうかすると「１という関数が存在しません」というエラーメッセージを表示して停止
#+end_src

制御文 関数
#+begin_src lisp
  (setq num 5)
  (message(if (> num 0) "num は 0 より大きい" "num は 0 以下"))
  (defun test_message(arg) ; 関数名と仮引数
    (message(if (> arg 0) "arg は 0 より大きい" "num は 0 以下"))
  )
  (test_message 10)
#+end_src

コンスセル（連想配列みたいな感じ）
#+begin_src lisp

  (setq testArr (cons "hello" (cons "world" "bye")))
  (car testArr)
  (cdr testArr)
#+end_src

例題：与えられた数値が３の倍数ならFizz,５の倍数ならBuzzそれ以外なら数値そのものを出す関数
#+begin_src lisp

  (defun fizz_bazz(arg)
    (if (equal (% arg 3) 0) "fizz"
	    (if (equal (% arg 5) 0) "bazz" (number-to-string arg))
    )
  )
  (fizz_bazz 5)
  (fizz_bazz 9)
  (fizz_bazz 12)
  (fizz_bazz 4)
#+end_src

ここからGITのブランチを試す
あ、でもその前にgitignoreを確認。

次はブランチを確認する。このあたりからちょっと理解が怪しい
そもそも一人だとあまり使わない機能ではある。
