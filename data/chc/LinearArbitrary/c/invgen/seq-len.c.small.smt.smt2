(set-logic HORN)

(declare-fun |main@.preheader4| ( Int Int Bool Int Bool Int Bool Int ) Bool)
(declare-fun |main@.preheader2| ( Int Int Bool Int Bool Int Bool Int ) Bool)
(declare-fun |main@.lr.ph24| ( Int Int Bool Int Bool Int Bool Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@.lr.ph20| ( Int Int Bool Int Bool Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph12| ( Int Int Bool Int Bool Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.preheader| ( Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph16| ( Int Int Bool Int Bool Int Bool Int Int ) Bool)
(declare-fun |main@.preheader3| ( Int Int Bool Int Bool Int Bool Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Bool Int Bool Int ) Bool)
(declare-fun |main@.lr.ph9| ( Int Int Bool Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Bool) (O Int) (P Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= F (and L J))
     (= G (and N F))
     (= J (not (<= H 0)))
     (= L (not (<= K 0)))
     (= N (not (<= M 0)))
     (= B E)
     (= C E)
     (= D E)
     (= O 0)
     (= P 0)
     (= A true)
     (= G true)
     (= J true)
     (= A (= I 1)))
      )
      (main@.lr.ph24 H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Bool) (O Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= G (and F N))
     (= J (not (<= H 0)))
     (= L (not (<= K 0)))
     (= N (not (<= M 0)))
     (= F (and L J))
     (= B E)
     (= C E)
     (= D E)
     (= O 0)
     (= A true)
     (= G true)
     (not J)
     (= A (= I 1)))
      )
      (main@.preheader4 H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.preheader4 B C D E F G H A)
        (and (= J A) (= F true) (= I 0))
      )
      (main@.lr.ph20 B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.preheader4 B C D E F G H A)
        (and (not F) (= I A))
      )
      (main@.preheader3 B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph24 F G H I J K L A B)
        (and (= D (+ 1 B))
     (= M E)
     (= E (+ 1 A))
     (= N D)
     (= C true)
     (= C (not (<= F E))))
      )
      (main@.lr.ph24 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Bool) (M Int) ) 
    (=>
      (and
        (main@.lr.ph24 F G H I J K L A B)
        (and (= C (+ 1 A)) (= E (+ 1 B)) (= M E) (not D) (= D (not (<= F C))))
      )
      (main@.preheader4 F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.preheader3 B C D E F G H A)
        (and (= J A) (= H true) (= I 0))
      )
      (main@.lr.ph16 B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.preheader3 D E F G H A B C)
        (and (not B) (= I C))
      )
      (main@.preheader1 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph20 F G H I J K L A B)
        (and (= D (+ 1 B))
     (= M E)
     (= E (+ 1 A))
     (= N D)
     (= C true)
     (= C (not (<= I E))))
      )
      (main@.lr.ph20 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Bool) (M Int) ) 
    (=>
      (and
        (main@.lr.ph20 F G H I J K L A B)
        (and (= C (+ 1 A)) (= E (+ 1 B)) (= M E) (not D) (= D (not (<= I C))))
      )
      (main@.preheader3 F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.preheader2 C D E F G J A B)
        (and (= I B) (= A true) (= H 0))
      )
      (main@.lr.ph12 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Bool) (I Int) ) 
    (=>
      (and
        (main@.preheader2 D E F G H A B C)
        (and (not B) (= I C))
      )
      (main@.preheader1 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph16 F G H I J K L A B)
        (and (= D (+ 1 B))
     (= M E)
     (= E (+ 1 A))
     (= N D)
     (= C true)
     (= C (not (<= K E))))
      )
      (main@.lr.ph16 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Bool) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@.lr.ph16 E F G H I J K A B)
        (and (= C (+ 1 A)) (= L (+ 1 B)) (not D) (= D (not (<= J C))))
      )
      (main@.preheader2 E F G H I J K L)
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
      (main@.lr.ph9 C D E F G H)
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
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph12 F G H I J A B M)
        (and (= K E)
     (= E (+ 1 A))
     (= L D)
     (= D (+ (- 1) B))
     (= C true)
     (= C (not (<= M E))))
      )
      (main@.lr.ph12 F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@.lr.ph12 G H I J K A B D)
        (and (= F (+ (- 1) B)) (= C (+ 1 A)) (= L F) (not E) (= E (not (<= D C))))
      )
      (main@.preheader1 G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader F G A C)
        (and (= E C) (= D 0) (= B true) (= A true) (= B (not (<= C 0))))
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
        (main@.lr.ph9 F G H A B K)
        (and (= E (+ 1 A))
     (= I E)
     (= D (+ (- 1) B))
     (= J D)
     (= C true)
     (= C (not (<= K E))))
      )
      (main@.lr.ph9 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@.lr.ph9 G H I A B D)
        (and (= F (+ (- 1) B)) (= C (+ 1 A)) (= J F) (not E) (= E (not (<= D C))))
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
        (and (= D (not (<= C J)))
     (= F (+ 1 A))
     (= H E)
     (= E (+ (- 1) C))
     (= G F)
     (= B true)
     (= D true)
     (= B (not (<= I F))))
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
