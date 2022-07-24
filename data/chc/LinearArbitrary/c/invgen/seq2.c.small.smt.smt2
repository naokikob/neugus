(set-logic HORN)

(declare-fun |main@.preheader1| ( Int Int Int Bool Int Int Int Bool ) Bool)
(declare-fun |main@.lr.ph16| ( Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.lr.ph12| ( Int Int Int Bool Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@.preheader3| ( Int Int Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph9| ( Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph30| ( Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.preheader| ( Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph9.preheader| ( Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= B (= F 2))
     (= I (not (<= G 0)))
     (= C E)
     (= D E)
     (= K 0)
     (= L 0)
     (= A true)
     (= B true)
     (= I true)
     (= A (= H 2)))
      )
      (main@.lr.ph16 F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= I (not (<= G 0)))
     (= A (= H 2))
     (= C E)
     (= D E)
     (= K 0)
     (= B true)
     (not I)
     (= A true)
     (= B (= F 2)))
      )
      (main@.preheader3 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.preheader3 B C D E F A)
        (and (= G A) (= I 0) (= H true) (= H (not (<= F 0))))
      )
      (main@.lr.ph12 B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@.preheader3 A E F G B D)
        (and (= H D) (not C) (= C (not (<= B 0))))
      )
      (main@.preheader E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph16 F G H I J A B)
        (and (= D (+ 1 A))
     (= E (+ 1 B))
     (= K D)
     (= L E)
     (= C true)
     (= C (not (<= G D))))
      )
      (main@.lr.ph16 F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph16 F G H I J A B)
        (and (= C (+ 1 A)) (= E (+ 1 B)) (= K E) (not D) (= D (not (<= G C))))
      )
      (main@.preheader3 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader1 B C D E F G H A)
        (= A true)
      )
      (main@.lr.ph9.preheader B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.preheader1 A F G H B C E D)
        (and (not D) (= I E))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph9.preheader A B C D E G F)
        (and (= H true) (= H (not (<= 0 G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@.lr.ph9.preheader E G H I J A C)
        (and (= D C) (= F 0) (not B) (= B (not (<= 0 A))))
      )
      (main@.lr.ph30 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Bool) (M Int) ) 
    (=>
      (and
        (main@.lr.ph12 F G H I J B L A)
        (and (= D (+ 1 B))
     (= E (+ 1 A))
     (= K D)
     (= M E)
     (= C true)
     (= C (not (<= J E))))
      )
      (main@.lr.ph12 F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (main@.lr.ph12 D E F G H I K A)
        (and (= B (+ 1 A)) (= J (+ 1 I)) (not C) (= C (not (<= H B))))
      )
      (main@.preheader1 D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) ) 
    (=>
      (and
        (main@.preheader A B C D)
        (and (= E true) (= C true) (= E (not (<= 1 D))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader F G A C)
        (and (= D 0) (= E C) (= A true) (not B) (= B (not (<= 1 C))))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@.lr.ph9 G H A B C D E F)
        (and (= I true) (= I (not (<= H G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) ) 
    (=>
      (and
        (main@.lr.ph9 A F C D H I J K)
        (and (= E D) (= G C) (not B) (= B (not (<= F A))))
      )
      (main@.lr.ph30 E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@.lr.ph30 C D A G H I J)
        (and (= E (+ 1 A)) (= F (+ (- 1) C)) (= B true) (= B (not (<= J E))))
      )
      (main@.lr.ph9 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Bool) (K Int) ) 
    (=>
      (and
        (main@.lr.ph30 C A B H I J E)
        (and (= D (+ 1 B)) (= G (+ (- 1) C)) (= K G) (not F) (= F (not (<= E D))))
      )
      (main@.preheader H I J K)
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
     (= H true)
     (= E true)
     (= H (not (<= G F))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph A C I J)
        (and (= B (not (<= I E)))
     (= G E)
     (= E (+ 1 A))
     (= F (+ (- 1) C))
     (= H F)
     (not D)
     (= B true)
     (= D (not (<= J C))))
      )
      (main@.lr.ph G H I J)
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
