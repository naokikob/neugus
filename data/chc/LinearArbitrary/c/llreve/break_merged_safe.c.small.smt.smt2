(set-logic HORN)

(declare-fun |main@_9| ( Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_4| ( Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= B (= G 10)) (= C D) (= A true) (= B true) (= A (= E 0)))
      )
      (main@empty.loop E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@_4 F G H A)
        (and (= B (not (<= F A))) (= C (= F H)) (= D (+ 1 F)) (= E true) (= E (or C B)))
      )
      (main@.preheader F G H)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader C D A)
        (and (= E (+ 10 (* (- 1) A))) (= B 10))
      )
      (main@_9 B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@_9 G H A B)
        (and (= F (or C D))
     (= C (not (<= A G)))
     (= E (+ (- 1) G))
     (= F true)
     (= D (= G B)))
      )
      (main@orig.main.exit G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_9 C G H I)
        (and (= B (= C I))
     (= D (or B A))
     (= E (+ (- 1) C))
     (= F E)
     (not D)
     (= A (not (<= H C))))
      )
      (main@_9 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@orig.main.exit A B)
        (and (= C (+ 10 (* (- 1) A))) (not D) (= E true) (= E (not (= B C))))
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
