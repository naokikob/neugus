;; FAIL (TIMEOUT: 10 seconds)
(set-logic HORN)
(declare-fun __query__ () Bool)
(declare-fun InvF (Int Int) Bool)
(assert (forall ((A Int) (B Int))
  (=> (and (InvF B A) (< A B) (not (= A 13))) __query__)))
(assert (forall ((A Int) (B Int) (C Int) (D Int))
  (=> (and (InvF D B) (>= B D) (= C (+ D 2)) (= A (- B 1))) (InvF C A))))
(assert (forall ((A Int) (B Int)) (=> (and (= B 1) (= A 20)) (InvF B A))))


(assert (forall () (not (__query__))))
(check-sat)
(exit)