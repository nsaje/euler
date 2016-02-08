-- let summ = sum [1..m] in summ * summ - (sum [x*x | x <- [1..m]])
diff = let m = 100 in
  (sum [1..m])**2 - (sum [x*x | x <- [1..m]])

main = print diff
