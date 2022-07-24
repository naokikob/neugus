(set-logic HORN)

(declare-fun |main@verifier.error| ( Int Bool ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= E 0)))
     (= B C)
     (= F 1)
     (= G 0)
     (= H E)
     (= A true)
     (= D true)
     (= A (= I 1)))
      )
      (main@.lr.ph E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Bool) ) 
    (=>
      (and
        (main@entry D)
        (and (= B (= A 1)) (= C D) (not E) (= B true) (not G) (= E (not (<= F 0))))
      )
      (main@verifier.error F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph G F A B K)
        (and (= D (+ F A))
     (= E (+ (- 1) B))
     (= H D)
     (= I F)
     (= J E)
     (= C true)
     (= C (not (<= B K))))
      )
      (main@.lr.ph G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph G A B D E)
        (and (= C (+ (- 1) D)) (= H (+ A B)) (not F) (= F (not (<= D E))))
      )
      (main@verifier.error.loopexit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit C A)
        (and (= D B) (= B (= A 21)))
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
        (and (= D (or B C)) (not D) (= B (not (= A 7))))
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
