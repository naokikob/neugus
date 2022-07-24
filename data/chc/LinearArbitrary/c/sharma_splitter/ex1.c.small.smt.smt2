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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_1 G B N C)
        (and (= E (not (<= 50 J)))
     (= H (not (<= N I)))
     (= D (ite H 1 0))
     (= F (ite E 1 (- 1)))
     (= I (ite A 1 B))
     (= J (+ C D))
     (= K (+ F G))
     (= L K)
     (= M I)
     (= O J)
     (= H true)
     (= A (not (<= 0 G))))
      )
      (main@_1 L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Int) ) 
    (=>
      (and
        (main@_1 I B D E)
        (and (= G (not (<= 50 K)))
     (= J (not (<= D C)))
     (= C (ite A 1 B))
     (= F (ite J 1 0))
     (= H (ite G 1 (- 1)))
     (= K (+ E F))
     (= L (+ H I))
     (not J)
     (= A (not (<= 0 I))))
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
        (and (= B true) (= B (= A (- 2))))
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
        (and (not C) (= C (= B (- 2))))
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
        (and (not B) (= B (= A 99)))
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
        (main@empty.loop D)
        (and (= C 0) (= E 0) (not A) (= B 0))
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
