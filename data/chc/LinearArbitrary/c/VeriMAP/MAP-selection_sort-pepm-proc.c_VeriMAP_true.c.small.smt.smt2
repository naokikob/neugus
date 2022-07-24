(set-logic HORN)

(declare-fun |main@_12| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Int ) Bool)
(declare-fun |main@_15| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@._crit_edge.backedge| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.split.us| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        main@entry
        (and (= B (= E 0))
     (= C (not (<= 0 D)))
     (= G (+ (- 1) D))
     (= A true)
     (= B true)
     (not C)
     (= A (= F 0)))
      )
      (main@empty.loop D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@._crit_edge C D H I J)
        (and (= B (not (<= C G)))
     (= E H)
     (= F G)
     (= G (+ 1 H))
     (= A true)
     (= B true)
     (= A (not (<= J H))))
      )
      (main@.lr.ph C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@._crit_edge D E B G H)
        (and (= C (not (<= D F))) (= F (+ 1 B)) (= A true) (not C) (= A (not (<= H B))))
      )
      (main@._crit_edge.backedge D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@._crit_edge.backedge B C A E F)
        (= D A)
      )
      (main@._crit_edge B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (main@.lr.ph.split.us G F H A B C D E)
        (and (= J (not (<= H G))) (= K (or J I)) (= K true) (= I (>= G F)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph.split.us D F G E J K L M)
        (and (= B (not (<= G D))) (= C (or B A)) (= H D) (= I E) (not C) (= A (>= D F)))
      )
      (main@.lr.ph F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph F G C H I J K L)
        (and (= D (= J E)) (= E (ite B C H)) (= D true) (= B (= A 0)))
      )
      (main@_15 E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph F G C H I J K L)
        (and (= D (= J E)) (= E (ite B C H)) (not D) (= B (= A 0)))
      )
      (main@_12 E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) ) 
    (=>
      (and
        (main@_12 G F A B C D H E)
        (and (= J (not (<= H G))) (= K (or J I)) (= K true) (= I (>= G F)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_12 D E F G H I J K)
        (and (= B (not (<= J D))) (= C (or B A)) (not C) (= A (>= D E)))
      )
      (main@_15 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_15 C D E A G H I J)
        (and (= F (+ 1 A)) (= B true) (= B (not (<= D F))))
      )
      (main@.lr.ph.split.us C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_15 A F G C H B I J)
        (and (= D (+ 1 C)) (not E) (= E (not (<= F D))))
      )
      (main@._crit_edge.backedge F G H I J)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop B C D E)
        (= A true)
      )
      (main@empty.loop.body B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@empty.loop B C E F)
        (and (not A) (= D 0))
      )
      (main@._crit_edge B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D)
        true
      )
      (main@empty.loop A B C D)
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
