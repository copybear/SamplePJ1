;; fizz bazz function
(setq sample 5)
(defun test(arg)
  (message (if
	       (> arg sample) "arg>sample" "arg<sample")
	   )
  )
  
  
(test 3)
(test 10)

