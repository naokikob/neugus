(set-logic HORN)
(declare-fun p (Int Int) Bool)
(declare-fun q (Int Int) Bool)
(declare-fun r (Int Int) Bool)

(assert (forall ((m Int) (n Int))
   (=> (and (q m n) (or (p m n) (r m n)))
       false)))

(assert (forall ((m Int))
   (=> (= m 1)
       (p m m))))

(assert (forall ((m Int))
   (=> (= m 0)
       (q m m))))

(assert (forall ((m Int))
   (=> (= m 0)
       (r (- 1) m))))

(assert (forall ((m Int) (n Int))
   (=> (p m n)
       (p (+ m 1) (+ n 2)))))

(assert (forall ((m Int) (n Int))
   (=> (p m n)
       (p (+ m 2) (- n 1)))))

(assert (forall ((m Int) (n Int))
   (=> (q m n)
       (q (- m 2) (- n 3)))))

(assert (forall ((m Int) (n Int))
   (=> (q m n)
       (q (+ m 2) (- n 1)))))

(assert (forall ((m Int) (n Int))
   (=> (r m n)
       (r (+ m 1) (+ n 2)))))

(assert (forall ((m Int) (n Int))
   (=> (r m n)
       (r (- m 2) (- n 3)))))

(check-sat)
(get-model)
