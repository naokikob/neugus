(set-logic HORN)

(declare-fun |main@empty.loop| ( Bool Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Bool Int Int ) Bool)
(declare-fun |main@_4| ( Bool Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Bool Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= D (not (<= E (- 1)))) (= B C) (= A true) (= D true) (= A (= F 0)))
      )
      (main@empty.loop D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@_4 H I J C E)
        (and (= G (not (<= E D)))
     (= B (ite A (- 1) 1))
     (= D (+ B C))
     (= F (+ 1 J))
     (= G true)
     (= A (not (<= J I))))
      )
      (main@verifier.error H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_4 H I D C L)
        (and (= E (not (<= L G)))
     (= B (ite A (- 1) 1))
     (= J F)
     (= F (+ 1 D))
     (= G (+ B C))
     (= K G)
     (not E)
     (= A (not (<= D I))))
      )
      (main@_4 H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@verifier.error A B D)
        (and (= C (* 2 B)) (= E (+ 3 C)) (not F) (= A true) (= F (not (<= E D))))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) ) 
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@empty.loop B C F)
        (and (= E 0) (not A) (= D 0))
      )
      (main@_4 B C D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
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
