(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph5| ( Int Int Bool Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.preheader| ( Int Int Bool Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= H (not (<= F 0)))
     (= B E)
     (= C E)
     (= D E)
     (= I F)
     (= J 0)
     (= A true)
     (= H true)
     (= A (= G 0)))
      )
      (main@.lr.ph5 F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= H (not (<= F 0)))
     (= B E)
     (= C E)
     (= D E)
     (= I F)
     (= A true)
     (not H)
     (= A (= G 0)))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader F G A C)
        (and (= E 0) (= D C) (= A true) (= B true) (= B (not (<= C (- 1)))))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@.preheader A B C D)
        (and (= C true) (not E) (= E (not (<= D (- 1)))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph5 F G H A B)
        (and (= D (+ (- 1) A))
     (= E (+ 2 B))
     (= I D)
     (= J E)
     (= C true)
     (= C (not (<= F E))))
      )
      (main@.lr.ph5 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.lr.ph5 F G H A B)
        (and (= C (+ 2 B)) (= E (+ (- 1) A)) (= I E) (not D) (= D (not (<= F C))))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph D A J K)
        (and (= C (not (<= J B)))
     (= B (* 2 F))
     (= I F)
     (= F (+ 1 A))
     (= G (+ (- 1) D))
     (= H G)
     (= E true)
     (= C true)
     (= E (not (<= D K))))
      )
      (main@.lr.ph H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@.lr.ph G B E H)
        (and (= I (not (<= G H)))
     (= A (+ (- 1) G))
     (= C (+ 1 B))
     (= D (* 2 C))
     (= F true)
     (not I)
     (= F (not (<= E D))))
      )
      main@verifier.error
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
