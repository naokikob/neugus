(set-logic HORN)

(declare-fun |main@.lr.ph16| ( Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.lr.ph11| ( Int Int Bool Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph8| ( Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Bool Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.preheader2| ( Int Int Bool Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Bool Int Bool Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= H (not (<= E 0)))
     (= B D)
     (= C D)
     (= F (* 20 E))
     (= J 0)
     (= K 0)
     (= A true)
     (= H true)
     (= A (= G 1)))
      )
      (main@.lr.ph16 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= H (not (<= E 0)))
     (= B D)
     (= C D)
     (= F (* 20 E))
     (= J 0)
     (= A true)
     (not H)
     (= A (= G 1)))
      )
      (main@.preheader2 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.preheader2 D E F A C)
        (and (= G (+ 128 B))
     (= B (* 6 A))
     (= I 0)
     (= J C)
     (= H true)
     (= H (not (<= B (- 128)))))
      )
      (main@.lr.ph11 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.preheader2 F G H A E)
        (and (= B (+ 128 C)) (= C (* 6 A)) (= I E) (not D) (= D (not (<= C (- 128)))))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph16 F G H I A B)
        (and (= D (+ 1 B))
     (= E (+ 1 A))
     (= J E)
     (= K D)
     (= C true)
     (= C (not (<= F E))))
      )
      (main@.lr.ph16 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph16 F G H I A B)
        (and (= C (+ 1 A)) (= E (+ 1 B)) (= J E) (not D) (= D (not (<= F C))))
      )
      (main@.preheader2 F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader1 C D E H A B)
        (and (= G B) (= A true) (= F 0))
      )
      (main@.lr.ph8 C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@.preheader1 D E F A B C)
        (and (not B) (= G C))
      )
      (main@.preheader D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph11 F G H I J A B)
        (and (= D (+ 1 B))
     (= E (+ 1 A))
     (= K E)
     (= L D)
     (= C true)
     (= C (not (<= I E))))
      )
      (main@.lr.ph11 F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@.lr.ph11 E F G H I A B)
        (and (= C (+ 1 A)) (= J (+ 1 B)) (not D) (= D (not (<= H C))))
      )
      (main@.preheader1 E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader F G A C)
        (and (= D 0) (= E C) (= A true) (= B true) (= B (not (<= C 0))))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@.preheader A B C D)
        (and (not E) (= C true) (= E (not (<= D 0))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph8 F G H A B K)
        (and (= D (+ (- 1) B))
     (= E (+ 1 A))
     (= I E)
     (= J D)
     (= C true)
     (= C (not (<= K E))))
      )
      (main@.lr.ph8 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@.lr.ph8 G H I A B D)
        (and (= C (+ 1 A)) (= F (+ (- 1) B)) (= J F) (not E) (= E (not (<= D C))))
      )
      (main@.preheader G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph A C I J)
        (and (= B (not (<= I F)))
     (= G F)
     (= E (+ (- 1) C))
     (= F (+ 1 A))
     (= H E)
     (= D true)
     (= B true)
     (= D (not (<= C J))))
      )
      (main@.lr.ph G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph A F D G)
        (and (= E (not (<= D C)))
     (= B (+ (- 1) F))
     (= C (+ 1 A))
     (not H)
     (= E true)
     (= H (not (<= F G))))
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
