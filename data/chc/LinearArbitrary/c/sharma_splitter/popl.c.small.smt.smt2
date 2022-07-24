(set-logic HORN)

(declare-fun |main@_1| ( Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int ) Bool)
(declare-fun |main@empty.loop| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)

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
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        main@entry
        (and (= A true) (= A (= B 99)))
      )
      (main@empty.loop B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_1 D B J)
        (and (= E (not (<= J D)))
     (= C (ite A 1 0))
     (= F (+ B C))
     (= G (+ 1 D))
     (= H G)
     (= I F)
     (= E true)
     (= A (not (<= D 49))))
      )
      (main@_1 H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_1 E C F)
        (and (= G (not (<= F E)))
     (= A (+ 1 E))
     (= D (ite B 1 0))
     (= H (+ C D))
     (not G)
     (= B (not (<= E 49))))
      )
      (main@verifier.error H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (= A 100)))
      )
      main@verifier.error.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (main@empty.loop B)
        (= A true)
      )
      (main@empty.loop.body B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@empty.loop D)
        (and (= C 50) (not A) (= B 0))
      )
      (main@_1 B C D)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        (main@empty.loop.body A)
        true
      )
      (main@empty.loop A)
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
(get-model)
(exit)
