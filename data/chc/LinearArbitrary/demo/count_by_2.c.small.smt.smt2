(set-logic HORN)

(declare-fun |main@_12| ( Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@_7| ( Int Int ) Bool)
(declare-fun |main@_10| ( Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= E (= H 100))
     (= F (and E D))
     (= A C)
     (= B C)
     (= I G)
     (= F true)
     (= D (= G 0)))
      )
      (main@_7 H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@_7 D A)
        (and (= C (+ 2 A)) (= E C) (= B true) (= B (not (<= D A))))
      )
      (main@_7 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (main@_7 C D)
        (and (= A (+ 2 D)) (not B) (= B (not (<= C D))))
      )
      (main@_10 C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@_10 A B)
        (and (= D (* 2 A)) (= C B))
      )
      (main@_12 C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@_12 A E)
        (and (= C (+ 2 A)) (= D C) (= B true) (= B (not (<= E A))))
      )
      (main@_12 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (main@_12 C D)
        (and (= A (+ 2 C)) (not B) (= B (not (<= D C))))
      )
      (main@verifier.error C D)
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
