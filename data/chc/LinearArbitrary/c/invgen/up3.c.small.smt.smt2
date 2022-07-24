(set-logic HORN)

(declare-fun |main@.preheader.thread| ( Bool ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph5| ( Int Int Bool Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= F (not (<= D 0)))
     (= B C)
     (= G 0)
     (= H 0)
     (= A true)
     (= F true)
     (= A (= E 2)))
      )
      (main@.lr.ph5 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (not (<= E 0))) (= C D) (= B true) (not F) (= B (= A 2)))
      )
      (main@.preheader.thread F)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@.preheader.thread A)
        (= A true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader E F A B)
        (and (= C 0) (= A true) (= D B))
      )
      (main@.lr.ph C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph5 F G H A B)
        (and (= D (+ 2 A))
     (= E (+ 1 B))
     (= I D)
     (= J E)
     (= C true)
     (= C (not (<= F D))))
      )
      (main@.lr.ph5 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@.lr.ph5 E F G A B)
        (and (= C (+ 2 A)) (= H (+ 1 B)) (not D) (= D (not (<= E C))))
      )
      (main@.lr.ph.preheader E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph A F D G)
        (and (= H (not (<= G F)))
     (= B (+ (- 1) F))
     (= C (+ 2 A))
     (= E true)
     (= H true)
     (= E (not (<= D C))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph A C I J)
        (and (= D (not (<= J C)))
     (= H F)
     (= E (+ 2 A))
     (= F (+ (- 1) C))
     (= G E)
     (= B true)
     (not D)
     (= B (not (<= I E))))
      )
      (main@.lr.ph G H I J)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@verifier.error
        true
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
