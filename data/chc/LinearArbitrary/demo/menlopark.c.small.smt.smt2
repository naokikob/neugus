(set-logic HORN)

(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= G (not (<= P 1)))
     (= H (= Q 1))
     (= I (and H G))
     (= J (>= N O))
     (= K (and M I))
     (= L (and K J))
     (= M (not (<= O 0)))
     (= B F)
     (= C F)
     (= D F)
     (= E F)
     (= R O)
     (= S P)
     (= T Q)
     (= U N)
     (= A true)
     (= L true)
     (= M true)
     (= A (= V 0)))
      )
      (main@.lr.ph R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Int) (N Bool) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= K (= I 1))
     (= L (and J K))
     (= N (>= R M))
     (= O (and Q L))
     (= P (and O N))
     (= Q (not (<= M 0)))
     (= J (not (<= H 1)))
     (= D G)
     (= E G)
     (= F G)
     (= C G)
     (= S R)
     (= B true)
     (= P true)
     (not Q)
     (= B (= A 0)))
      )
      (main@verifier.error S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph A B C D N)
        (and (= F (+ (- 1) D))
     (= G (+ A (* (- 1) B)))
     (= H (+ B (* (- 1) C)))
     (= I (* (- 1) C))
     (= J G)
     (= K H)
     (= L I)
     (= M F)
     (= E true)
     (= E (not (<= G N))))
      )
      (main@.lr.ph J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph A C E F H)
        (and (= B (+ C (* (- 1) E)))
     (= D (* (- 1) E))
     (= G (+ A (* (- 1) C)))
     (= J (+ (- 1) F))
     (= K J)
     (not I)
     (= I (not (<= G H))))
      )
      (main@verifier.error K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (not (<= A (- 1)))))
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
