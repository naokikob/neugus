(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= G (= F 0))
     (= C E)
     (= D E)
     (= H (* 5 K))
     (= I 0)
     (= J 0)
     (= L H)
     (= B true)
     (= G true)
     (= B (= A 0)))
      )
      (main@verifier.error I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry K)
        (and (= E (= D 0))
     (= B K)
     (= C K)
     (= F (* 5 G))
     (= H 0)
     (= I F)
     (= J 0)
     (= A true)
     (not E)
     (= A (= L 0)))
      )
      (main@.lr.ph G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph N A B C E G)
        (and (= J (+ 1 A))
     (= D E)
     (= I (+ (- 3) B))
     (= K (+ 2 C))
     (= L K)
     (= M J)
     (= O I)
     (= H true)
     (= H (= F G)))
      )
      (main@verifier.error L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph J A B C N O)
        (and (= D N)
     (= G (+ 2 C))
     (= H (+ 1 A))
     (= I (+ (- 3) B))
     (= K H)
     (= L I)
     (= M G)
     (not F)
     (= F (= E O)))
      )
      (main@.lr.ph J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (main@verifier.error A B E F)
        (and (= I (not (= C D)))
     (= J (or I H))
     (= C (+ A B))
     (= D (* 3 E))
     (= G (* 2 E))
     (not J)
     (= H (= F G)))
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
