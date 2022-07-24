(set-logic HORN)

(declare-fun |main@_1| ( Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@_5| ( Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int ) Bool)
(declare-fun |main@empty.loop| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_8| ( Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@_1 G C D)
        (and (= F (not (<= D H)))
     (= B (ite A 1 (- 1)))
     (= E (+ 1 G))
     (= H (+ B C))
     (= F true)
     (= A (not (<= 51 G))))
      )
      (main@_5 G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_1 D C J)
        (and (= E (not (<= J G)))
     (= B (ite A 1 (- 1)))
     (= H F)
     (= F (+ 1 D))
     (= G (+ B C))
     (= I G)
     (not E)
     (= A (not (<= 51 D))))
      )
      (main@_1 H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@_5 D A)
        (and (= B (+ A D)) (= C true) (= C (not (<= 102 B))))
      )
      (main@_8 D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@_5 B A)
        (and (= C (+ A B)) (not D) (= D (not (<= 102 C))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@_8 A)
        (and (not B) (= B (not (<= 103 A))))
      )
      main@verifier.error
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
        (and (= C 0) (not A) (= B 0))
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
