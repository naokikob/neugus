(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Bool Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (= E 0))
     (= C D)
     (= B true)
     (= F true)
     (= G true)
     (= H true)
     (= B (= A 0)))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= D (= C 0)) (= B G) (= F 0) (= E 1) (= A true) (not D) (= A (= H 0)))
      )
      (main@.lr.ph E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph I B D F)
        (and (= A (* (- 1) I)) (= C D) (= H (+ 1 B)) (= G true) (= G (= E F)))
      )
      (main@verifier.error.loopexit H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph A B J K)
        (and (= C J)
     (= I G)
     (= F (* (- 1) A))
     (= G (+ 1 B))
     (= H F)
     (not E)
     (= E (= D K)))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A B)
        (and (= D (not (<= 0 B))) (= E C) (= F D) (= C (not (= A 100))))
      )
      (main@verifier.error E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (not C) (= C (or B A)))
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
