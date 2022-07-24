(set-logic HORN)

(declare-fun |main@_2| ( Int Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@verifier.error| ( Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int ) Bool)
(declare-fun |main@empty.loop| ( Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) ) 
    (=>
      (and
        main@entry
        (and (= C A) (= B true) (= B (= C 69)))
      )
      (main@empty.loop C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_2 F E L)
        (let ((a!1 (ite (>= F 0)
                (or (not (<= L F)) (not (>= L 0)))
                (and (not (<= L F)) (not (<= 0 L))))))
  (and (= G a!1)
       (= A F)
       (= B (mod A 55))
       (= D (ite C 4 2))
       (= H (+ D E))
       (= I (+ 1 F))
       (= K H)
       (= J I)
       (= G true)
       (= C (= B 54))))
      )
      (main@_2 J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@_2 G E H)
        (let ((a!1 (ite (>= G 0)
                (or (not (<= H G)) (not (>= H 0)))
                (and (not (<= H G)) (not (<= 0 H))))))
  (and (= I a!1)
       (= A G)
       (= B (mod A 55))
       (= D (ite C 4 2))
       (= F (+ 1 G))
       (= J (+ D E))
       (not I)
       (= C (= B 54))))
      )
      (main@verifier.error J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@verifier.error A)
        (and (not B) (= B (= A 140)))
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
        (and (= B 1) (not A) (= C 0))
      )
      (main@_2 B C D)
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
