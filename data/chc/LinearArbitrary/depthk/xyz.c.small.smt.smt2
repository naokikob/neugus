(set-logic HORN)

(declare-fun |main@.lr.ph5| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.loopexit| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Bool ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@entry F)
        (and (= D (= C 0))
     (= H (= G 0))
     (= E F)
     (= B true)
     (= D true)
     (= H true)
     (= I true)
     (= B (= A 1)))
      )
      (main@verifier.error I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry I)
        (and (= B (= J 0))
     (= E (= D 0))
     (= C I)
     (= G 0)
     (= H 0)
     (= A true)
     (= B true)
     (not E)
     (= A (= F 1)))
      )
      (main@.lr.ph5 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph5 L A B D F)
        (and (= C D)
     (= K I)
     (= H (+ (- 2) B))
     (= I (+ 1 A))
     (= J H)
     (= G true)
     (= G (= E F)))
      )
      (main@.lr.ph J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph5 H A B K L)
        (and (= G (+ 1 A))
     (= C K)
     (= F (+ (- 2) B))
     (= I G)
     (= J F)
     (not E)
     (= E (= D L)))
      )
      (main@.lr.ph5 H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph A B H)
        (and (= G E)
     (= D (+ 2 A))
     (= E (+ (- 1) B))
     (= F D)
     (= C true)
     (= C (not (<= B H))))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@.lr.ph F C D)
        (and (= A (+ 2 F)) (= B (+ (- 1) C)) (not E) (= E (not (<= C D))))
      )
      (main@verifier.error.loopexit F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@verifier.error.loopexit A)
        (and (= C B) (= B (not (<= A (- 3)))))
      )
      (main@verifier.error C)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (not A)
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
