(set-logic HORN)

(declare-fun |main@verifier.error| ( Int Bool ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= E 0) (= F 0) (= C true) (= C (not (<= D 0))))
      )
      (main@.lr.ph D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (not C) (not E) (= C (not (<= D 0))))
      )
      (main@verifier.error D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph F A B)
        (and (= E (+ 1 B))
     (= D (+ A B))
     (= G D)
     (= H E)
     (= C true)
     (= C (not (<= F E))))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph E A B)
        (and (= C (+ 1 B)) (= F (+ A B)) (not D) (= D (not (<= E C))))
      )
      (main@verifier.error.loopexit E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit C A)
        (and (= D B) (= B (not (<= A 44))))
      )
      (main@verifier.error C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@verifier.error A C)
        (and (= D (or B C)) (not D) (= B (not (<= 10 A))))
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
