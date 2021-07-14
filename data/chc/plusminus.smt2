(set-logic HORN)
(declare-fun plus (Int Int Int) Bool)
(declare-fun minus (Int Int Int) Bool)

(assert (forall ((m Int) (n Int) (r Int) (s Int))
   (=> (and (plus m n r) (minus r n s))
       (= m s))))

(assert (forall ((m Int))
   (=> true
       (plus m 0 m))))
       
(assert (forall ((m Int) (n Int) (r Int))
   (=> (and (> n 0) (plus m (- n 1) r))
       (plus m n (+ r 2)))))
       
(assert (forall ((m Int))
   (=> true
       (minus m 0 m))))
       
(assert (forall ((m Int) (n Int) (r Int))
   (=> (and (> n 0) (minus m (- n 1) r))
       (minus m n (- r 2)))))
       
(check-sat)
(get-model)


