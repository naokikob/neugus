(set-logic HORN)

(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Bool Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Bool) (P Int) (Q Bool) (R Bool) (S Int) (T Bool) (U Bool) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) (C1 Int) ) 
    (=>
      (and
        (main@entry F)
        (and (= G (not (<= W 0)))
     (= H (not (<= C1 0)))
     (= I (and H G))
     (= J (and Q I))
     (= K (not (<= W C1)))
     (= L (not J))
     (= M (or L K))
     (= O (not (<= N P)))
     (= Q (not (<= Z 0)))
     (= R (and A1 Q))
     (= T (not (<= W (- 1))))
     (= U (not (<= C1 S)))
     (= V (and U T))
     (= A1 (not (<= P 2)))
     (= B F)
     (= C F)
     (= D F)
     (= E F)
     (= N (* 2 Z))
     (= P (+ C1 (* (- 1) W)))
     (= S (+ 1 W))
     (= X W)
     (= Y 0)
     (= A true)
     (not M)
     (not O)
     (= R true)
     (= V true)
     (= A (= B1 (- 3))))
      )
      (main@.lr.ph X Y Z A1 B1 C1)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Bool) (R Int) (S Bool) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Bool) (Z Bool) (A1 Bool) ) 
    (=>
      (and
        (main@entry G)
        (and (= L (not (<= V X)))
     (= N (or M L))
     (= Q (not (<= P R)))
     (= U (and T S))
     (= Z (not (<= X W)))
     (= H (not (<= V 0)))
     (= I (not (<= X 0)))
     (= J (and I H))
     (= K (and T J))
     (= M (not K))
     (= S (not (<= R 2)))
     (= T (not (<= O 0)))
     (= Y (not (<= V (- 1))))
     (= A1 (and Y Z))
     (= E G)
     (= F G)
     (= P (* 2 O))
     (= R (+ X (* (- 1) V)))
     (= C G)
     (= D G)
     (= W (+ 1 V))
     (= B true)
     (not N)
     (not Q)
     (= U true)
     (not A1)
     (= B (= A (- 3))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph D A M N O P)
        (and (= F (not (<= D O)))
     (= B (not (<= M J)))
     (= G (not (<= P E)))
     (= H (and G F))
     (= E (+ 3 D))
     (= J (+ 1 A))
     (= K I)
     (= L J)
     (= I (+ 2 D))
     (= C true)
     (= H true)
     (= C (and N B)))
      )
      (main@.lr.ph K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) ) 
    (=>
      (and
        (main@.lr.ph I B D E H K)
        (and (= F (not (<= D C)))
     (= G (and F E))
     (= L (not (<= I H)))
     (= N (and L M))
     (= C (+ 1 B))
     (= A (+ 2 I))
     (= J (+ 3 I))
     (= G true)
     (not N)
     (= M (not (<= K J))))
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
