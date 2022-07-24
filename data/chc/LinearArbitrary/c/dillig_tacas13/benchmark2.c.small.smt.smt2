(set-logic HORN)

(declare-fun |main@.lr.ph8| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry H E)
        (and (= C (= B 0))
     (= G (= F 0))
     (= D E)
     (= J 1)
     (= K 0)
     (= A true)
     (= C true)
     (= G true)
     (= A (= I 0)))
      )
      (main@._crit_edge H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry F J)
        (and (= E (= D 0))
     (= A (= G 0))
     (= C J)
     (= H 0)
     (= I 1)
     (= B true)
     (not E)
     (= A true)
     (= B (= K 0)))
      )
      (main@.lr.ph8 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph8 J K A B D F)
        (and (= C D)
     (= I (+ 3 B))
     (= H (+ 1 A))
     (= L I)
     (= M H)
     (= G true)
     (= G (= E F)))
      )
      (main@._crit_edge J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph8 H I A B L M)
        (and (= C L) (= F (+ 3 B)) (= G (+ 1 A)) (= J G) (= K F) (not E) (= E (= D M)))
      )
      (main@.lr.ph8 H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@._crit_edge E A B C)
        (and (= D E) (= H 0) (= I 0) (= G true) (= G (= F 0)))
      )
      (main@verifier.error H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@._crit_edge D E F G)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@.lr.ph.preheader D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader H I A B)
        (and (= C (+ A (* (- 1) B))) (= D 0) (= F C) (= G 0) (= E 0))
      )
      (main@.lr.ph D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.lr.ph H D B K M O)
        (and (= P (= N O))
     (= A (+ H D))
     (= C (+ A B))
     (= E (+ C K))
     (= F (mod E 2))
     (= I (ite G 1 0))
     (= J (+ 2 K))
     (= L M)
     (= Q (+ 1 D))
     (= R (+ H I))
     (= S R)
     (= T Q)
     (= P true)
     (= G (= F 1)))
      )
      (main@verifier.error S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@.lr.ph G D B I U V)
        (and (= L (= K V))
     (= A (+ G D))
     (= C (+ A B))
     (= E (mod N 2))
     (= H (ite F 1 0))
     (= J U)
     (= N (+ C I))
     (= R P)
     (= M (+ 2 I))
     (= O (+ G H))
     (= P (+ 1 D))
     (= Q O)
     (= S N)
     (= T M)
     (not L)
     (= F (= E 1)))
      )
      (main@.lr.ph Q R S T U V)
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
