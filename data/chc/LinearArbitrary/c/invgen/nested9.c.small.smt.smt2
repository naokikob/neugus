(set-logic HORN)

(declare-fun |main@empty.loop| ( Int Bool Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph4| ( Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |main@_12| ( Int Int Bool Int ) Bool)
(declare-fun |main@._crit_edge3| ( Int Int Bool Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Bool Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Bool Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Bool) (N Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= J (not (<= H I)))
     (= M (not (<= K N)))
     (= B E)
     (= C E)
     (= D E)
     (= H (* 3 N))
     (= I (+ F G))
     (= L (* 2 N))
     (= A true)
     (not J)
     (= A (= K 0)))
      )
      (main@empty.loop L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@_12 D E H I)
        (and (= B (not (<= G C)))
     (= C (* 2 D))
     (= F C)
     (= G (* 3 D))
     (= A true)
     (= B true)
     (= A (not (<= I D))))
      )
      (main@.preheader D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_12 E F G H)
        (and (= A (not (<= H E)))
     (= B (* 2 E))
     (= C (* 3 E))
     (not D)
     (= A true)
     (= D (not (<= C B))))
      )
      (main@._crit_edge3 E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@.preheader B C D E F G)
        (and (= A true) (= A (not (<= D B))))
      )
      (main@.lr.ph.preheader B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@.preheader B C D E F G)
        (and (not A) (= A (not (<= D B))))
      )
      (main@._crit_edge B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@.lr.ph.preheader A B C D F E)
        (= F true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader A B D E F G)
        (and (not F) (= C A))
      )
      (main@.lr.ph4 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.lr.ph4 D E A F G H I)
        (and (= C (+ 1 A)) (= B true) (= B (not (<= F C))))
      )
      (main@.lr.ph C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.lr.ph4 D E A F G H I)
        (and (= B (+ 1 A)) (not C) (= C (not (<= F B))))
      )
      (main@._crit_edge D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@.lr.ph E F H A B C D)
        (and (= G (+ E (* (- 1) F))) (= I true) (= I (not (<= G H))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@.lr.ph C D E G H I J)
        (and (= A (+ C (* (- 1) D))) (= F C) (not B) (= B (not (<= A E))))
      )
      (main@.lr.ph4 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@._crit_edge D E A G H I)
        (and (= C (+ 1 A)) (= F C) (= B true) (= B (not (<= G C))))
      )
      (main@.preheader D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@._crit_edge E F A C G H)
        (and (= B (+ 1 A)) (not D) (= D (not (<= C B))))
      )
      (main@._crit_edge3 E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@._crit_edge3 A D E F)
        (and (= B (+ 1 A)) (= C B))
      )
      (main@_12 C D E F)
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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@empty.loop B C D)
        (= A true)
      )
      (main@empty.loop.body B C D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) ) 
    (=>
      (and
        (main@empty.loop C D E)
        (and (not A) (= B 0))
      )
      (main@_12 B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C)
        true
      )
      (main@empty.loop A B C)
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
