(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int Int ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        main@entry
        (and (= E 0)
     (= F 0)
     (= A (not (<= 0 C)))
     (= B (not (<= C 0)))
     (not A)
     (= B true)
     (= D 0))
      )
      (main@.lr.ph C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        main@entry
        (and (= D 0) (= B (not (<= E 0))) (= A (not (<= 0 E))) (not B) (not A) (= C 0))
      )
      (main@verifier.error C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph L C F G)
        (and (= E (ite D 1 2))
     (= I (+ 1 G))
     (= J (+ E F))
     (= K (+ B C))
     (= M K)
     (= N J)
     (= O I)
     (= D (= A 0))
     (= H (not (<= L I)))
     (= H true)
     (= B (ite D 2 1)))
      )
      (main@.lr.ph L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph N C F G)
        (and (= E (ite D 1 2))
     (= H (+ 1 G))
     (= J (+ B C))
     (= K (+ E F))
     (= L K)
     (= M J)
     (= D (= A 0))
     (= I (not (<= N H)))
     (not I)
     (= B (ite D 2 1)))
      )
      (main@verifier.error L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@verifier.error A B C)
        (and (= E (* 3 C)) (= F (= D E)) (not F) (= D (+ A B)))
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
