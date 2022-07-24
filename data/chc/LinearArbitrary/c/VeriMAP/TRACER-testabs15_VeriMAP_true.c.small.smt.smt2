(set-logic HORN)

(declare-fun |main@precall| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int ) Bool)
(declare-fun |main@precall.split| ( ) Bool)
(declare-fun |main@_5| ( Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= B (not (<= C 0))) (= A true) (= B true) (= A (not (<= C (- 1)))))
      )
      (main@.lr.ph C D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= D 0)
     (= A (not (<= E (- 1))))
     (= B (not (<= E 0)))
     (= A true)
     (not B)
     (= C 0))
      )
      (main@precall C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph C A)
        (and (= E (ite B 2 1)) (= F 0) (= G (ite B 1 2)) (= H 0) (= B (= A 0)) (= D 0))
      )
      (main@_5 C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_5 H A J B L C)
        (and (= G (+ 1 C))
     (= F (+ A J))
     (= I F)
     (= K E)
     (= M G)
     (= D (not (<= H G)))
     (= D true)
     (= E (+ B L)))
      )
      (main@_5 H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_5 L A B C D E)
        (and (= H (+ A B))
     (= I (+ C D))
     (= J I)
     (= K H)
     (= G (not (<= L F)))
     (not G)
     (= F (+ 1 E)))
      )
      (main@precall J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@precall A B C)
        (and (= E (* 3 C)) (= G (not (= D E))) (not F) (= G true) (= D (+ A B)))
      )
      main@precall.split
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
