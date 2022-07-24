(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@empty.loop.body| ( Int ) Bool)
(declare-fun |main@empty.loop| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@_1| ( Int Int Int Int Int ) Bool)

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
        (and (= A true) (= A (= B 199)))
      )
      (main@empty.loop B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_1 A B E G Q)
        (and (= D (not C))
     (= H (not (<= Q G)))
     (= F (ite D 1 0))
     (= I (+ 1 G))
     (= J (ite C 1 0))
     (= K (+ E F))
     (= L (+ B J))
     (= M J)
     (= N L)
     (= O K)
     (= P I)
     (= H true)
     (= C (= A 0)))
      )
      (main@_1 M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) ) 
    (=>
      (and
        (main@_1 A B F I J)
        (and (= D (= A 0))
     (= K (not (<= J I)))
     (= C (ite D 1 0))
     (= G (ite E 1 0))
     (= H (+ 1 I))
     (= L (+ F G))
     (= M (+ B C))
     (not K)
     (= E (not D)))
      )
      (main@verifier.error L M)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@empty.loop F)
        (and (= C 0) (= D 0) (= E 0) (not A) (= B 0))
      )
      (main@_1 B C D E F)
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
