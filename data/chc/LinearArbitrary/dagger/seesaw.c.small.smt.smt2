(set-logic HORN)

(declare-fun |main@_17| ( Int Int Int Int ) Bool)
(declare-fun |main@_13| ( Int Int Int Int ) Bool)
(declare-fun |main@_37| ( Int Int Int Int ) Bool)
(declare-fun |main@_21| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int ) Bool)
(declare-fun |main@_33| ( Int Int Int Int ) Bool)
(declare-fun |main@_29| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_44| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_25| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@entry I)
        (and (= E (= M 0))
     (= F (= L 0))
     (= G (and F E))
     (= K (= J 0))
     (= C I)
     (= D I)
     (= H I)
     (= N M)
     (= O L)
     (= B true)
     (= G true)
     (= K true)
     (= B (= A 0)))
      )
      (main@._crit_edge N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@entry L)
        (and (= D (= J 0))
     (= I (= H 0))
     (= E (= K 0))
     (= F (and E D))
     (= B L)
     (= G L)
     (= C L)
     (= N J)
     (= O K)
     (= A true)
     (not I)
     (= F true)
     (= A (= M 0)))
      )
      (main@.lr.ph L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_17 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_13 D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_13 F G B C)
        (and (= E (+ 2 B))
     (= D (+ 1 C))
     (= H D)
     (= I E)
     (= A true)
     (= A (not (<= B 8))))
      )
      (main@_37 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_17 D E F G)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_25 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_17 D E F G)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_21 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_21 G H C D)
        (let ((a!1 (= B (and (not (<= 3 A)) (>= A 0)))))
  (and (= A (+ (- 7) C))
       (= F (+ 1 C))
       (= E (+ 3 D))
       (= I E)
       (= J F)
       (= B true)
       a!1))
      )
      (main@_37 G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_25 D E F G)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_33 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_25 D E F G)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_29 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_29 G H C D)
        (let ((a!1 (= B (and (not (<= 3 A)) (>= A 0)))))
  (and (= A (+ (- 5) C))
       (= F (+ 2 C))
       (= E (+ 1 D))
       (= I E)
       (= J F)
       (= B true)
       a!1))
      )
      (main@_37 G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_33 F G B C)
        (and (= E (+ 1 B))
     (= D (+ 2 C))
     (= H D)
     (= I E)
     (= A true)
     (= A (not (<= 5 B))))
      )
      (main@_37 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_37 B D F G)
        (and (= A B) (= H G) (= I F) (= E true) (= E (= C D)))
      )
      (main@._crit_edge H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_37 F G E D)
        (and (= A F) (= H D) (= I E) (not C) (= C (= B G)))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@._crit_edge D E)
        (and (= A (* 2 E)) (= B (+ A (* (- 1) D))) (= C true) (= C (not (<= B (- 1)))))
      )
      (main@_44 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) ) 
    (=>
      (and
        (main@._crit_edge C A)
        (and (= B (* 2 A)) (= D (+ B (* (- 1) C))) (not E) (= E (not (<= D (- 1)))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) ) 
    (=>
      (and
        (main@_44 A C)
        (and (= B (* 3 A)) (= D true) (= D (not (<= C B))))
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
