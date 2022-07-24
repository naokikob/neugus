(set-logic HORN)

(declare-fun |main@precall.split| ( ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@empty.loop| ( Bool Int Int ) Bool)
(declare-fun |main@precall| ( Bool Int ) Bool)
(declare-fun |main@_4| ( Bool Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Bool Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        main@entry
        (and (= C (not (= B 0))) (= D (ite C 1 0)) (= A true) (= A (= E 99)))
      )
      (main@empty.loop C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_4 F A H B J)
        (and (= D (+ A H))
     (= E (+ 1 B))
     (= G D)
     (= I E)
     (= C true)
     (= C (not (<= J B))))
      )
      (main@_4 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Int) ) 
    (=>
      (and
        (main@_4 G A B D E)
        (and (= C (+ 1 D)) (= H (+ A B)) (not F) (= F (not (<= E D))))
      )
      (main@precall G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@precall A B)
        (and (= A true) (not C) (= D true) (= D (not (= B 100))))
      )
      main@precall.split
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
        (main@empty.loop B D F)
        (and (= E 0) (not A) (= C 0))
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
        main@precall.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
