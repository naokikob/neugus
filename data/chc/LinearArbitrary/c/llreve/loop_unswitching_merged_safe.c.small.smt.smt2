(set-logic HORN)

(declare-fun |main@.loopexit| ( Int Int Int Int Bool ) Bool)
(declare-fun |main@_15| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@.lr.ph7| ( Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph11| ( Int Int Int Bool Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Bool) (M Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= B (= M 1))
     (= D (= C 1))
     (= H (not (<= J 0)))
     (= L (not (<= K 0)))
     (= E G)
     (= F G)
     (= A true)
     (= B true)
     (= D true)
     (= H true)
     (= A (= I 1)))
      )
      (main@.preheader I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Bool) (M Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= A (= I 1))
     (= D (= M 1))
     (= H (not (<= J 0)))
     (= L (not (<= K 0)))
     (= E G)
     (= F G)
     (= C true)
     (= A true)
     (= D true)
     (not H)
     (= C (= B 1)))
      )
      (main@.preheader1 I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader1 A B C D G)
        (and (= F C) (= D true) (= E 0))
      )
      (main@.lr.ph11 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader1 A B C E D)
        (and (= G 0) (not E) (= F 0))
      )
      (main@orig.main.exit F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader A B C D G)
        (and (= F C) (= D true) (= E 0))
      )
      (main@.lr.ph7 A B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader A B C E D)
        (and (= G 0) (not E) (= F 0))
      )
      (main@orig.main.exit F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph7 F G H I A B L)
        (and (= D (+ 1 A))
     (= E (+ (- 1) B))
     (= J D)
     (= K E)
     (= C true)
     (= C (not (<= B L))))
      )
      (main@.lr.ph7 F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (main@.lr.ph7 G I J K A C D)
        (and (= B (+ (- 1) C)) (= H F) (= F (+ 1 A)) (not E) (= E (not (<= C D))))
      )
      (main@.loopexit G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph11 F G H I A B L)
        (and (= D (+ (- 1) A))
     (= E (+ (- 1) B))
     (= J D)
     (= K E)
     (= C true)
     (= C (not (<= B L))))
      )
      (main@.lr.ph11 F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (main@.lr.ph11 G I J K A C D)
        (and (= B (+ (- 1) C)) (= H F) (= F (+ (- 1) A)) (not E) (= E (not (<= C D))))
      )
      (main@.loopexit G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.loopexit B C D E A)
        (= A true)
      )
      (main@.lr.ph B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.loopexit A E B C D)
        (and (= G 0) (not D) (= F E))
      )
      (main@orig.main.exit F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph G H A C)
        (and (= D 0) (= E (ite B (- 1) 1)) (= F C) (= B (not (<= 1 A))))
      )
      (main@_15 D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_15 A G B I J)
        (and (= D (+ A G))
     (= F D)
     (= H E)
     (= E (+ (- 1) B))
     (= C true)
     (= C (not (<= B I))))
      )
      (main@_15 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_15 A B D E G)
        (and (= C (+ (- 1) D))
     (= H (+ A B))
     (= I G)
     (= J H)
     (not F)
     (= F (not (<= D E))))
      )
      (main@orig.main.exit I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@orig.main.exit A B)
        (and (= D true) (not C) (= D (not (= A B))))
      )
      main@orig.main.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@orig.main.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
