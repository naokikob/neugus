(set-logic HORN)

(declare-fun |main@.loopexit| ( Int Int Int Int Int Bool Int Bool ) Bool)
(declare-fun |main@.lr.ph7| ( Int Bool Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph15| ( Int Int Int Int Bool Int Bool Int Int Int ) Bool)
(declare-fun |main@.preheader1| ( Int Int Int Int Int ) Bool)
(declare-fun |main@_17| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Bool Int Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@orig.main.exit.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph11| ( Int Int Int Int Int Bool Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Bool) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@entry H)
        (and (= B (= M 1))
     (= C (= N 1))
     (= D (= T 1))
     (= J (and Q O))
     (= O (not (<= I 0)))
     (= Q (not (<= P 0)))
     (= E H)
     (= F H)
     (= G H)
     (= R 0)
     (= S P)
     (= A true)
     (= B true)
     (= C true)
     (= D true)
     (= J true)
     (= A (= K 1)))
      )
      (main@.lr.ph15 K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Int) (S Bool) ) 
    (=>
      (and
        (main@entry I)
        (and (= K (and S Q))
     (= Q (not (<= J 0)))
     (= S (not (<= R 0)))
     (= A (= L 1))
     (= B (= N 1))
     (= C (= P 1))
     (= F I)
     (= G I)
     (= H I)
     (= O 0)
     (= E true)
     (not K)
     (= A true)
     (= B true)
     (= C true)
     (= E (= D 1)))
      )
      (main@.loopexit L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph15 F G H I J K L A B O)
        (and (= E (+ (- 1) B))
     (= D (+ 1 A))
     (= M D)
     (= N E)
     (= C true)
     (= C (not (<= B O))))
      )
      (main@.lr.ph15 F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Bool) ) 
    (=>
      (and
        (main@.lr.ph15 G H I K L M N A C D)
        (and (= B (+ (- 1) C)) (= F (+ 1 A)) (= J F) (not E) (= E (not (<= C D))))
      )
      (main@.loopexit G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@.loopexit B C D E F G H A)
        (= A true)
      )
      (main@.lr.ph11 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.loopexit E G H I A B C D)
        (and (not D) (= F 0))
      )
      (main@.preheader1 E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph11 C D E F J A B)
        (and (= H (ite A 1 0)) (= I B) (= G 0))
      )
      (main@_17 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader1 B D E H A)
        (and (= F A) (= G E) (= C true) (= C (not (<= E 0))))
      )
      (main@.lr.ph7 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader1 A F C B E)
        (and (= G E) (= H F) (not D) (= D (not (<= C 0))))
      )
      (main@orig.main.exit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_17 F G H I A K B M)
        (and (= J D)
     (= D (+ A K))
     (= E (+ (- 1) B))
     (= L E)
     (= C true)
     (= C (not (<= B M))))
      )
      (main@_17 F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_17 H J K L A B D E)
        (and (= G (+ A B)) (= I G) (= C (+ (- 1) D)) (not F) (= F (not (<= D E))))
      )
      (main@.preheader1 H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader F G A B C)
        (and (= E C) (= A true) (= D B))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader A D C E B)
        (and (= G E) (not C) (= F D))
      )
      (main@orig.main.exit F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph7 F G H I A B L)
        (and (= D (+ 2 A))
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph7 F H I J A C D)
        (and (= G (+ 2 A)) (= B (+ (- 1) C)) (not E) (= E (not (<= C D))))
      )
      (main@.preheader F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph A B H I)
        (and (= D (+ 2 A))
     (= F D)
     (= E (+ (- 1) B))
     (= G E)
     (= C true)
     (= C (not (<= B H))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph A C D F)
        (and (= B (+ (- 1) C))
     (= G (+ 2 A))
     (= H F)
     (= I G)
     (not E)
     (= E (not (<= C D))))
      )
      (main@orig.main.exit H I)
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
