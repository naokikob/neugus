(set-logic HORN)

(declare-fun |main@_8| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph4| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_16| ( Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= D (= C 0))
     (= I (= H 0))
     (= E G)
     (= F G)
     (= J 0)
     (= B true)
     (= D true)
     (= I true)
     (= B (= A 0)))
      )
      (main@verifier.error J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry I)
        (and (= F (= E 0))
     (= B (= J 0))
     (= D I)
     (= C I)
     (= A true)
     (not F)
     (= B true)
     (= A (= G 0)))
      )
      (main@.lr.ph4 G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph4 A C F G)
        (and (= D 0) (= E 0) (= B (* (- 1) C)))
      )
      (main@_8 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_8 L N O B E G I)
        (and (= J (= H I))
     (= A (ite C N O))
     (= D (ite C O N))
     (= F G)
     (= K (+ D E))
     (= M (+ A B))
     (= J true)
     (= C (not (<= 0 B))))
      )
      (main@._crit_edge K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_8 K L M B E P Q)
        (and (= H (= G Q))
     (= A (ite C L M))
     (= D (ite C M L))
     (= F P)
     (= I (+ D E))
     (= J (+ A B))
     (= N J)
     (= O I)
     (not H)
     (= C (not (<= 0 B))))
      )
      (main@_8 K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@._crit_edge H A F D E)
        (and (= C (not (<= F H))) (= B (ite C D E)) (= I H) (= G true) (= G (= H F)))
      )
      (main@verifier.error I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@._crit_edge F G H B C)
        (and (= D (= F H)) (= E (ite A B C)) (not D) (= A (not (<= H F))))
      )
      (main@.lr.ph E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.lr.ph C E F A)
        (and (= D (* (- 1) C)) (= B A))
      )
      (main@_16 B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@_16 A C D I G)
        (and (= B (not (<= 0 A)))
     (= E (+ F I))
     (= F (ite B C D))
     (= J I)
     (= H true)
     (= H (= F G)))
      )
      (main@verifier.error J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_16 A G H I J)
        (and (= D (= C J))
     (= C (ite B G H))
     (= E (+ C I))
     (= F E)
     (not D)
     (= B (not (<= 0 A))))
      )
      (main@_16 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (= A 0)))
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
