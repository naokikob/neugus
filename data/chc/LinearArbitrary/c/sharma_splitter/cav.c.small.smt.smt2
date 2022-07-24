(set-logic HORN)

(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@empty.loop.body| ( Int ) Bool)
(declare-fun |main@_1| ( Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_8| ( Int ) Bool)
(declare-fun |main@_6| ( Int Int ) Bool)
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
        (and (= A true) (= A (= B 1)))
      )
      (main@empty.loop B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_1 F C E O)
        (and (= D (not (<= 0 K)))
     (= H (not (<= O I)))
     (= B (ite A 1 (- 1)))
     (= G (ite H 1 0))
     (= I (ite D 1 E))
     (= J (+ F G))
     (= K (+ B C))
     (= L J)
     (= M K)
     (= N I)
     (= H true)
     (= A (not (<= 51 F))))
      )
      (main@_1 L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) ) 
    (=>
      (and
        (main@_1 H C E G)
        (and (= A (not (<= 51 H)))
     (= J (not (<= G F)))
     (= B (ite A 1 (- 1)))
     (= F (ite D 1 E))
     (= I (ite J 1 0))
     (= K (+ B C))
     (= L (+ H I))
     (not J)
     (= D (not (<= 0 K))))
      )
      (main@_6 K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        (main@_6 C A)
        (and (= B true) (= B (not (<= 103 A))))
      )
      (main@_8 C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_6 A B)
        (and (not C) (= C (not (<= 103 B))))
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
        (and (not B) (= B (not (<= 52 A))))
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
