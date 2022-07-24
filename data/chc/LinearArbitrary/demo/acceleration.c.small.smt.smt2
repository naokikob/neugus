(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int Int ) Bool)

(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (main@entry A)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (let ((a!1 (ite (>= F 0)
                (or (not (<= E F)) (not (>= E 0)))
                (and (not (<= E F)) (not (<= 0 E))))))
  (and (= B C) (= G 0) (= H F) (= D a!1) (= D true) (= A C)))
      )
      (main@.lr.ph E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@entry C)
        (let ((a!1 (ite (>= F 0)
                (or (not (<= E F)) (not (>= E 0)))
                (and (not (<= E F)) (not (<= 0 E))))))
  (and (= B C) (= G 0) (= D a!1) (not D) (= A C)))
      )
      (main@verifier.error E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F G A B)
        (let ((a!1 (ite (>= E 0)
                (or (not (<= F E)) (not (>= F 0)))
                (and (not (<= F E)) (not (<= 0 F))))))
  (and (= D (+ 2 A)) (= H D) (= I E) (= C a!1) (= C true) (= E (+ 1 B))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph F G A B)
        (let ((a!1 (ite (>= C 0)
                (or (not (<= F C)) (not (>= F 0)))
                (and (not (<= F C)) (not (<= 0 F))))))
  (and (= E (+ 2 A)) (= H E) (= D a!1) (not D) (= C (+ 1 B))))
      )
      (main@verifier.error F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@verifier.error A B E)
        (and (= C (+ A (* (- 1) B)))
     (= F (= E D))
     (= G (= E 0))
     (= H (or G F))
     (not H)
     (= D (* 2 C)))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
