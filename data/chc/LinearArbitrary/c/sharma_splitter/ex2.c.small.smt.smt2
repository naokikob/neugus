(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@empty.loop.body| ( Int ) Bool)
(declare-fun |main@_9| ( Int ) Bool)
(declare-fun |main@_1| ( Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_6| ( Int Int Int ) Bool)
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
        (and (= A true) (= A (= B 99)))
      )
      (main@empty.loop B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_1 G C F O)
        (and (= D (not (<= 25 G)))
     (= H (not (<= O G)))
     (= B (ite A 1 (- 1)))
     (= E (ite D 1 5))
     (= I (+ E F))
     (= J (+ 1 G))
     (= K (+ B C))
     (= L J)
     (= M K)
     (= N I)
     (= H true)
     (= A (not (<= 51 G))))
      )
      (main@_1 L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_1 G C F H)
        (and (= A (not (<= 51 G)))
     (= I (not (<= H G)))
     (= E (ite D 1 5))
     (= B (ite A 1 (- 1)))
     (= J (+ 1 G))
     (= K (+ E F))
     (= L (+ B C))
     (not I)
     (= D (not (<= 25 G))))
      )
      (main@_6 J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) ) 
    (=>
      (and
        (main@_6 F A B)
        (and (= D (= A 400)) (= E (and D C)) (= E true) (= C (= B 2)))
      )
      (main@_9 F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) ) 
    (=>
      (and
        (main@_6 A B C)
        (and (= D (= C 2)) (= E (= B 400)) (not F) (= F (and E D)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@_9 A)
        (and (not B) (= B (= A 100)))
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@empty.loop E)
        (and (= C 0) (= D 0) (not A) (= B 0))
      )
      (main@_1 B C D E)
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
