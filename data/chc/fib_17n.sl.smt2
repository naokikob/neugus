;; FAIL (TIMEOUT: 10 seconds)
(set-logic HORN)
(declare-fun __query__ () Bool)
(declare-fun inv-f (Int Int Int Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int))
  (=> (and (inv-f C E D B A) (= A 3) (not (>= C B))) __query__)))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Int))
  (let ((a!1 (not (= E (- (+ F J) H))))
        (a!3 (or (not (= B 2))
                 (not (= E F))
                 (not (= I (+ J 1)))
                 (not (= G H))
                 (not (= C D))
                 (not (= A 0)))))
  (let ((a!2 (or (not (= B 1))
                 (not (< H J))
                 a!1
                 (not (= I J))
                 (not (= G (+ H 1)))
                 (not (= C D))
                 (not (= A B)))))
  (let ((a!4 (and (or (not (= B 0))
                      (not (< J D))
                      (not (= E F))
                      (not (= I J))
                      (not (= G 0))
                      (not (= C D))
                      (not (= A 1)))
                  (or (not (= B 0))
                      (not (>= J D))
                      (not (= E F))
                      (not (= I J))
                      (not (= G H))
                      (not (= C D))
                      (not (= A 3)))
                  a!2
                  (or (not (= B 1))
                      (not (>= H J))
                      (not (= E F))
                      (not (= I J))
                      (not (= G H))
                      (not (= C D))
                      (not (= A 2)))
                  a!3
                  (or (not (>= B 3))
                      (not (= E F))
                      (not (= I J))
                      (not (= G H))
                      (not (= C D))
                      (not (= A B)))
                  (or (not (< B 0))
                      (not (= E F))
                      (not (= I J))
                      (not (= G H))
                      (not (= C D))
                      (not (= A B))))))
    (=> (and (inv-f F J H D B) (not a!4)) (inv-f E I G C A)))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int))
  (=> (and (= C 1) (= E 1) (= D 0) (= A 0)) (inv-f C E D B A))))


(assert (forall () (not (__query__))))
(check-sat)
(exit)