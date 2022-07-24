(set-logic HORN)

(declare-fun |main@_25| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_14| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@_10| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_7| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_16| ( Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (= E 0)) (= C D) (= G 0) (= H 0) (= B true) (= F true) (= B (= A 0)))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= D (= C 0))
     (= B G)
     (= E 0)
     (= F 0)
     (= I 0)
     (= J 0)
     (= A true)
     (not D)
     (= A (= H 0)))
      )
      (main@.lr.ph E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I)
        (and (= A F) (= C true) (= C (= B 0)))
      )
      (main@_10 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I)
        (and (= A F) (not C) (= C (= B 0)))
      )
      (main@_7 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_7 E F G H A B)
        (and (= C (+ 100 B)) (= I C) (= J D) (= D (+ 1 A)))
      )
      (main@_25 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_10 D E F G H I)
        (and (= A F) (= C true) (= C (= B 0)))
      )
      (main@_19 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_10 D E F G H I)
        (and (= A F) (not C) (= C (= B 0)))
      )
      (main@_14 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_14 B C D E F G)
        (and (= A true) (= A (not (<= F 3))))
      )
      (main@_16 B C D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@_14 D E F G C B)
        (and (= H B) (= I C) (not A) (= A (not (<= C 3))))
      )
      (main@_25 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_16 E F G H A B)
        (and (= C (+ 1 B)) (= I C) (= J D) (= D (+ 1 A)))
      )
      (main@_25 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_19 J K L M I F)
        (and (= D (<= F A))
     (= E (or D C))
     (= A (* 10 J))
     (= B (* 100 I))
     (= G (* (- 1) F))
     (= H (ite E F G))
     (= N H)
     (= O I)
     (= C (not (<= B K))))
      )
      (main@_25 J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_25 B D F H J K)
        (and (= A (+ 1 B))
     (= C (+ 10 D))
     (= E F)
     (= L K)
     (= M J)
     (= I true)
     (= I (= G H)))
      )
      (main@verifier.error L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_25 A B L M H G)
        (and (= C L)
     (= F (+ 1 A))
     (= I (+ 10 B))
     (= J F)
     (= K I)
     (= N G)
     (= O H)
     (not E)
     (= E (= D M)))
      )
      (main@.lr.ph J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= E (or C D)) (= C (not (<= B 2))) (not E) (= D (not (<= 4 A))))
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
