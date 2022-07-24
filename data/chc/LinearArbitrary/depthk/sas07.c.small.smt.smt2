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
        (and (= A true) (= A (= B 0)))
      )
      (main@empty.loop B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_1 D C F)
        (and (= G (= E F))
     (= B (ite A 1 (- 1)))
     (= E (+ B C))
     (= H (+ 1 D))
     (= G true)
     (= A (not (<= 51 D))))
      )
      (main@verifier.error H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_1 D C J)
        (and (= E (= G J))
     (= B (ite A 1 (- 1)))
     (= I G)
     (= F (+ 1 D))
     (= G (+ B C))
     (= H F)
     (not E)
     (= A (not (<= 51 D))))
      )
      (main@_1 H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (= A 102)))
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
        (and (= B 0) (not A) (= C 0))
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
(exit)
