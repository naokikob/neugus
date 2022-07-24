(set-logic HORN)

(declare-fun |main@entry| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph12| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@..loopexit_crit_edge| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph5| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge.loopexit| ( Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry I K F)
        (and (= B (= J 0))
     (= D (= C 0))
     (= H (= G 0))
     (= E F)
     (= M 0)
     (= N 0)
     (= A true)
     (= B true)
     (= D true)
     (= H true)
     (= A (= L 0)))
      )
      (main@._crit_edge I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@entry G I O)
        (and (= B (= H 0))
     (= C (= P 0))
     (= F (= E 0))
     (= D O)
     (= K 2)
     (= L 0)
     (= M 0)
     (= N 0)
     (= A true)
     (= B true)
     (= C true)
     (not F)
     (= A (= J 0)))
      )
      (main@.lr.ph12 G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph12 M N O P D F B G I K)
        (and (= A (+ D (* (- 1) F)))
     (= C (+ 1 D))
     (= E (+ 1 F))
     (= H I)
     (= Q (+ A B))
     (= R (+ 2 G))
     (= L true)
     (= L (= J K)))
      )
      (main@._crit_edge.loopexit M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@.lr.ph12 M N O P C D B E U V)
        (and (= A (+ C (* (- 1) D)))
     (= F U)
     (= I (+ A B))
     (= L (+ 1 C))
     (= J (+ 2 E))
     (= K (+ 1 D))
     (= Q L)
     (= R K)
     (= S I)
     (= T J)
     (not H)
     (= H (= G V)))
      )
      (main@.lr.ph12 M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@._crit_edge.loopexit F G H I A D)
        (and (= E (ite C 1 0)) (= B (mod A 2)) (= J E) (= K D) (= C (= B 1)))
      )
      (main@._crit_edge F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@._crit_edge F A B C I D)
        (and (= E F) (= J I) (= K 0) (= H true) (= H (= G 0)))
      )
      (main@verifier.error J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@._crit_edge F G L M E D)
        (and (= A F) (= H 2) (= I D) (= J E) (= K 0) (not C) (= C (= B 0)))
      )
      (main@.lr.ph5 F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@..loopexit_crit_edge F G H I A K L)
        (and (= B (mod A 2)) (= D (ite C 0 H)) (= E (+ I D)) (= J E) (= C (= B 1)))
      )
      (main@.loopexit F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.loopexit E G I J A B C)
        (and (= D E) (= K J) (= L I) (= H true) (= H (= F G)))
      )
      (main@verifier.error K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.loopexit G H F E D M N)
        (and (= A G) (= I D) (= J D) (= K E) (= L F) (not C) (= C (= B H)))
      )
      (main@.lr.ph5 G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph5 K L J B F A P Q)
        (and (= D (= C 0))
     (= C (mod B 2))
     (= G P)
     (= E (ite D 1 2))
     (= M (+ 1 A))
     (= N (+ E F))
     (= O J)
     (= I true)
     (= I (= H 0)))
      )
      (main@.loopexit K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph5 J K A N F B O P)
        (and (= D (= C 0))
     (= C (mod N 2))
     (= E (ite D 1 2))
     (= G O)
     (= L (+ 1 B))
     (= M (+ E F))
     (not I)
     (= I (= H 0)))
      )
      (main@.lr.ph J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J)
        (and (= A I) (= C true) (= C (= B J)))
      )
      (main@..loopexit_crit_edge D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J)
        (and (= A I) (not C) (= C (= B J)))
      )
      (main@.lr.ph D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (not C) (= C (= A B)))
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
