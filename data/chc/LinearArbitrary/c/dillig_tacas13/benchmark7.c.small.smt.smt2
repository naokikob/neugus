(set-logic HORN)

(declare-fun |main@.lr.ph7| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@.preheader.verifier.error_crit_edge| ( Bool Int ) Bool)
(declare-fun |main@_20| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Bool Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry K M F)
        (and (= C (= B 0))
     (= D (= M 0))
     (= H (= G 0))
     (= E F)
     (= I (ite D 1 0))
     (= J I)
     (= A true)
     (= C true)
     (= H true)
     (= A (= L 0)))
      )
      (main@.preheader J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@entry H J N)
        (and (= B (= O 0))
     (= C (= J 0))
     (= F (= E 0))
     (= D N)
     (= G (ite C 1 0))
     (= K 0)
     (= L 0)
     (= M G)
     (= A true)
     (= B true)
     (not F)
     (= A (= I 0)))
      )
      (main@.lr.ph7 H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Int) ) 
    (=>
      (and
        (main@.preheader H C A E)
        (and (= G (not (= E 0))) (= B C) (= F true) (= F (= D 0)))
      )
      (main@.preheader.verifier.error_crit_edge G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader A G H D)
        (and (= F (not (= D 0))) (= B G) (not E) (= E (= C 0)))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader.verifier.error_crit_edge A C)
        (and (= D C) (= E B) (= B (ite A 1 0)))
      )
      (main@verifier.error D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph B G H)
        (and (= C 1) (= D (ite A 1 0)) (= E 1) (= F (ite B 1 0)) (= A (not B)))
      )
      (main@_20 C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph7 N O P F D B H J)
        (and (= A (+ F (* (- 1) D)))
     (= C (+ 1 D))
     (= G H)
     (= E (+ 1 F))
     (= L (+ A B))
     (= M L)
     (= K true)
     (= K (= I J)))
      )
      (main@.preheader M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph7 K L M D C B Q R)
        (and (= A (+ D (* (- 1) C)))
     (= E Q)
     (= I (+ 1 C))
     (= H (+ A B))
     (= J (+ 1 D))
     (= N J)
     (= O I)
     (= P H)
     (not G)
     (= G (= F R)))
      )
      (main@.lr.ph7 K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_20 A B C R N P)
        (and (= H (= D 1))
     (= I (not H))
     (= D (mod S 2))
     (= E (+ F G))
     (= F (+ A B))
     (= G (ite H 1 0))
     (= L (ite I 1 0))
     (= K (+ C R))
     (= J (+ K L))
     (= M N)
     (= S (+ F C))
     (= T S)
     (= U R)
     (= Q true)
     (= Q (= O P)))
      )
      (main@verifier.error T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_20 A Q B S T U)
        (and (= G (= D 1))
     (= H (not G))
     (= C (+ E B))
     (= D (mod C 2))
     (= E (+ A Q))
     (= F (ite G 1 0))
     (= I (+ B S))
     (= K T)
     (= P O)
     (= J (ite H 1 0))
     (= N (+ I J))
     (= O (+ E F))
     (= R N)
     (not M)
     (= M (= L U)))
      )
      (main@_20 P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C (+ A B)) (= D (mod C 2)) (not E) (= E (= D 1)))
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
