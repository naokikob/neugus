(set-logic HORN)
(declare-fun p (Int Int Int) Bool)
(declare-fun q (Int Int Int) Bool)
(declare-fun r (Int Int Int) Bool)

(assert (forall ((l Int) (m Int) (n Int))
   (=> (and (p l m n) (q l m n))
       false)))

(assert (forall ((m Int))
   (=> (= m 1)
       (p m m m))))

(assert (forall ((l Int) (m Int) (n Int))
   (=> (p l m n)
       (p (- l 2) (+ m 1) (+ n 1)))))

(assert (forall ((l Int) (m Int) (n Int))
   (=> (p l m n)
       (p (+ l 1) (- m 1) (+ n 1)))))

(assert (forall ((l Int) (m Int) (n Int))
   (=> (p l m n)
       (p (+ l 1) (+ m 1) (- n 1)))))

(assert (forall ((m Int))
   (=> (= m 0)
       (q m m m))))

(assert (forall ((l Int) (m Int) (n Int))
   (=> (q l m n)
       (q (- l 2) (+ m 1) (+ n 1)))))

(assert (forall ((l Int) (m Int) (n Int))
   (=> (q l m n)
       (q (+ l 1) (- m 1) (+ n 1)))))

(assert (forall ((l Int) (m Int) (n Int))
   (=> (q l m n)
       (q (- l 1) (- m 1) (+ n 1)))))

(check-sat)
(get-model)
