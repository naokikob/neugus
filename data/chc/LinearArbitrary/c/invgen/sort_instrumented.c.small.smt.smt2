(set-logic HORN)

(declare-fun |main@.lr.ph7.us| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry.split.us| ( Int Int Int Int ) Bool)
(declare-fun |main@_12| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@._crit_edge.us| ( Int Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry H)
        (and (= B (= E 0))
     (= D (not (<= G 0)))
     (= C H)
     (= A true)
     (= B true)
     (= D true)
     (= A (= F 1)))
      )
      (main@entry.split.us E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry.split.us D E I J)
        (and (= A J) (= F 0) (= G 0) (= H 0) (not C) (= C (= B 0)))
      )
      (main@_12 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@._crit_edge.us A C D E F)
        (and (= B true) (= B (= A C)))
      )
      (main@entry.split.us C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@._crit_edge.us D E A B C)
        (and (not F) (= F (= D E)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph7.us F B A I J K)
        (and (= E (+ (- 1) A))
     (= D (+ (- 1) B))
     (= G D)
     (= H E)
     (= C true)
     (= C (not (<= B I))))
      )
      (main@.lr.ph7.us F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph7.us F C B G H I)
        (and (= A (+ (- 1) C)) (= E (+ (- 1) B)) (not D) (= D (not (<= C G))))
      )
      (main@._crit_edge.us E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_12 H I A B C M N)
        (and (= E (+ 1 C))
     (= F (+ 1 B))
     (= G (+ 1 A))
     (= J G)
     (= K F)
     (= L E)
     (= D true)
     (= D (not (<= M E))))
      )
      (main@_12 H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_12 H K A B C L M)
        (and (= D (+ 1 C))
     (= G (+ 1 B))
     (= F (+ 1 A))
     (= I F)
     (= J G)
     (not E)
     (= E (not (<= L D))))
      )
      (main@.lr.ph7.us H I J K L M)
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
