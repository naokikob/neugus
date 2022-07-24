(set-logic HORN)

(declare-fun |main@.lr.ph| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@_18| ( Int Int Int ) Bool)
(declare-fun |main@_16| ( Int Int Bool ) Bool)
(declare-fun |main@_12| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= G (not (<= N M)))
     (= J (and G F))
     (= K (= M I))
     (= L (and K J))
     (= A E)
     (= B E)
     (= C E)
     (= D E)
     (= I (* 2 H))
     (= L true)
     (= F (not (<= M 0))))
      )
      (main@_12 M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Bool) ) 
    (=>
      (and
        (main@entry E)
        (and (= G (not (<= N M)))
     (= J (and G F))
     (= K (= M I))
     (= L (and K J))
     (= A E)
     (= B E)
     (= C E)
     (= D E)
     (= I (* 2 H))
     (not O)
     (not L)
     (= F (not (<= M 0))))
      )
      (main@_16 M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@_12 E F A)
        (and (= D (= F C)) (= B (* 2 A)) (= C (+ 1 B)) (= G D))
      )
      (main@_16 E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@_16 B C A)
        (and (= A true) (= D 0))
      )
      (main@_18 B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@_18 D E A)
        (and (= C (+ 1 A)) (= F C) (= B true) (= B (not (<= D A))))
      )
      (main@_18 D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@_18 C D E)
        (and (= A (+ 1 E)) (not B) (= B (not (<= C E))))
      )
      (main@.preheader C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader D E B)
        (and (= C B) (= A true) (= A (not (<= E B))))
      )
      (main@.lr.ph C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader A B D)
        (and (= E D) (not C) (= C (not (<= B D))))
      )
      (main@verifier.error E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph C G H)
        (and (= D (not (<= H E)))
     (= E (+ B C))
     (= B (ite A 1 2))
     (= F E)
     (= D true)
     (= A (not (<= G C))))
      )
      (main@.lr.ph F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph D A E)
        (and (= F (not (<= E G)))
     (= G (+ C D))
     (= C (ite B 1 2))
     (= H G)
     (not F)
     (= B (not (<= A D))))
      )
      (main@verifier.error H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (= B (mod A 2)) (not C) (= C (= B 0)))
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
