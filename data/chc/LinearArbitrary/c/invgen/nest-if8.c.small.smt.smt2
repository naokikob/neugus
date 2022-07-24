(set-logic HORN)

(declare-fun |main@._crit_edge| ( Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@_16| ( Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@_25| ( Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@_10| ( Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Bool Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph9| ( Int Int Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@_22| ( Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph4| ( Int Int Int Int Int Bool Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) ) 
    (=>
      (and
        (main@entry M)
        (and (= B (= G 0))
     (= F (not (<= J E)))
     (= K (not (<= J G)))
     (= C M)
     (= D M)
     (= E (+ 1 H))
     (= I (+ 5 J))
     (= A true)
     (= B true)
     (= F true)
     (= A (= L (- 1))))
      )
      (main@empty.loop H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@_10 C D F G H I J)
        (and (= B (not (<= D C))) (= E C) (= A true) (= B true) (= A (not (<= G C))))
      )
      (main@.lr.ph4 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@_10 C D E F G H I)
        (and (= A (not (<= F C))) (not B) (= A true) (= B (not (<= D C))))
      )
      (main@._crit_edge C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph4 D E F G H I J K)
        (and (= A K) (= C true) (= C (= B 0)))
      )
      (main@_22 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph4 D E F G H I J K)
        (and (= A K) (not C) (= C (= B 0)))
      )
      (main@_16 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@_16 B C D E F G H I)
        (and (= A true) (= A (not (<= D H))))
      )
      (main@.lr.ph.preheader B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@_16 A B G C D E H F)
        (and (not I) (= I (not (<= G H))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader A B C D E H I J)
        (and (= G (+ 1 C)) (= H true) (= F 0))
      )
      (main@.lr.ph9 A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@.lr.ph.preheader A B H C D I E F)
        (and (not I) (= G (+ 1 H)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph9 C D E F H A I J K L)
        (and (= G (+ 1 A)) (= B true) (= B (not (<= E A))))
      )
      (main@.lr.ph C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph9 F H C I J B E K L M)
        (and (= A (+ 1 B)) (= G E) (not D) (= D (not (<= C B))))
      )
      (main@.loopexit F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph C D E F B G I J K L)
        (and (= H B) (= A true) (= A (not (<= G B))))
      )
      (main@.lr.ph9 C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (main@.lr.ph A B C D I J E F G H)
        (and (not K) (= K (not (<= J I))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@_22 C D E F G H I J)
        (and (= A (+ F E)) (= B true) (= B (not (<= A C))))
      )
      (main@_25 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_22 I A G F B C D E)
        (and (= H (+ F G)) (not J) (= J (not (<= H I))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@_25 C E A F G H I J)
        (and (= D B) (= B (+ 2 A)))
      )
      (main@.loopexit C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.loopexit C B D F G H I J)
        (and (= E B) (= A true) (= A (not (<= D B))))
      )
      (main@.lr.ph4 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.loopexit C A D E F G H I)
        (and (not B) (= B (not (<= D A))))
      )
      (main@._crit_edge C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@._crit_edge A D E F G H I)
        (and (= B (+ 4 A)) (= C B))
      )
      (main@_10 C D E F G H I)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F G)
        (= A true)
      )
      (main@empty.loop.body B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@empty.loop C D E F G H)
        (and (not A) (= B 0))
      )
      (main@_10 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E F)
        true
      )
      (main@empty.loop A B C D E F)
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
