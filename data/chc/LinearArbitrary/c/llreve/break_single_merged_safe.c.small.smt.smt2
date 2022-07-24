(set-logic HORN)

(declare-fun |main@.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_4| ( Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= B (= G 10)) (= C D) (= A true) (= B true) (= A (= E 11)))
      )
      (main@empty.loop E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_4 F H I A)
        (and (= E (or C B))
     (= C (= F I))
     (= D (+ 1 F))
     (= G 0)
     (= E true)
     (= B (not (<= F A))))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_4 C G H I)
        (and (= B (= C H))
     (= D (or B A))
     (= E (+ 1 C))
     (= F E)
     (not D)
     (= A (not (<= C I))))
      )
      (main@_4 F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader F C H I)
        (and (= B (not (= C I)))
     (= D (and B A))
     (= E (+ 1 C))
     (= G E)
     (= D true)
     (= A (not (<= H C))))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader G H A B)
        (and (= D (not (= H B)))
     (= C (not (<= A H)))
     (= E (+ 1 H))
     (not F)
     (= F (and C D)))
      )
      (main@orig.main.exit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@orig.main.exit A B)
        (and (not C) (= D true) (= D (not (= A B))))
      )
      main@orig.main.exit.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop C D E)
        (and (not A) (= B 0))
      )
      (main@_4 B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
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
        main@orig.main.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
