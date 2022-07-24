(set-logic HORN)

(declare-fun |main@.lr.ph22.preheader| ( Int Bool Int ) Bool)
(declare-fun |main@postcall3| ( Bool Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int Int Bool Bool Int Int Int Int ) Bool)
(declare-fun |main@assert.split| ( ) Bool)
(declare-fun |main@postcall1| ( Int Int Bool Bool Int Bool ) Bool)
(declare-fun |main@.lr.ph16| ( Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@assert| ( Bool ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Bool Bool Int Int Int Int Int ) Bool)
(declare-fun |main@postcall| ( Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Bool Bool Int ) Bool)
(declare-fun |main@.lr.ph22| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.loopexit2| ( Int Int Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph11| ( Int Int Bool Bool Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge23| ( Int Int Bool Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= E true) (= E (not (<= F 0))))
      )
      (main@.lr.ph22.preheader D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= D G) (= H E) (not F) (= F (not (<= G 0))))
      )
      (main@._crit_edge23 D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) ) 
    (=>
      (and
        (main@.lr.ph22.preheader F G H)
        (and (= C F) (= D 0) (= E H) (= A true) (= B 1))
      )
      (main@postcall B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@.lr.ph22.preheader A B C)
        (and (= E true) (not D))
      )
      (main@assert E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@.loopexit2 B C D E F G)
        (and (= A true) (= A (not (<= D B))))
      )
      (main@.lr.ph22 B C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) ) 
    (=>
      (and
        (main@.loopexit2 A C D F G H)
        (and (= E D) (= I C) (not B) (= B (not (<= D A))))
      )
      (main@._crit_edge23 E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@.lr.ph22 D C E J K L)
        (and (= F B) (= G C) (= H D) (= I E) (= A true) (= B (+ 1 D)))
      )
      (main@postcall F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@.lr.ph22 G A B C D E)
        (and (not H) (= I true) (= F (+ 1 G)))
      )
      (main@assert I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) ) 
    (=>
      (and
        (main@postcall F A B E I J K)
        (and (= D (+ (- 1) A)) (= G D) (= H E) (= C true) (= C (not (<= E B))))
      )
      (main@.loopexit2 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@postcall E A F C G H I)
        (and (= D (+ (- 1) A)) (= J C) (= K D) (not B) (= B (not (<= C F))))
      )
      (main@.lr.ph16 E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph16 F G H I J B A)
        (and (= D (+ 1 B))
     (= E (+ 1 A))
     (= K D)
     (= L E)
     (= C true)
     (= C (not (<= G B))))
      )
      (main@.lr.ph16 F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@.lr.ph16 G C J K L B A)
        (and (= E (+ 1 A)) (= F (+ 1 B)) (= H E) (= I F) (not D) (= D (not (<= C B))))
      )
      (main@.loopexit2 G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Bool) ) 
    (=>
      (and
        (main@._crit_edge23 I J L M C)
        (and (= B (not L))
     (= E (or F B))
     (= F (and K A))
     (= K (not (<= 1 M)))
     (= G (= C D))
     (= N (ite E F G))
     (= D (+ J (* (- 1) M)))
     (= H true)
     (= A (= C J)))
      )
      (main@postcall1 I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) ) 
    (=>
      (and
        (main@._crit_edge23 A F D G H)
        (and (= K (and C B))
     (= B (not (<= 1 G)))
     (= C (= H F))
     (= J (or K E))
     (= L (= H I))
     (= N (ite J K L))
     (= O N)
     (= I (+ F (* (- 1) G)))
     (not M)
     (= E (not D)))
      )
      (main@assert O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@postcall1 C D E F G A)
        (and (= I G) (= H 0) (= J D) (= F true) (not B) (= B (not A)))
      )
      (main@.lr.ph11 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) ) 
    (=>
      (and
        (main@postcall1 C F G H I A)
        (and (= D I) (= E F) (not B) (not H) (= B (not A)))
      )
      (main@._crit_edge C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.loopexit E F G H I B C D)
        (and (= K C) (= J B) (= L D) (= A true) (= A (not (<= C B))))
      )
      (main@.lr.ph11 E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Int) ) 
    (=>
      (and
        (main@.loopexit E H I J K A D C)
        (and (= F D) (= G C) (not B) (= B (not (<= D A))))
      )
      (main@._crit_edge E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph11 F G H I J B E A)
        (and (= D (+ (- 1) A))
     (= L E)
     (= K (+ 1 B))
     (= M D)
     (= C true)
     (= C (not (<= E B))))
      )
      (main@.loopexit F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph11 E F G H I K C A)
        (and (= D (+ (- 1) A))
     (= L C)
     (= J (+ 1 K))
     (= M D)
     (not B)
     (= B (not (<= C K))))
      )
      (main@.lr.ph E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph F G H I J K L B A)
        (and (= D (+ 1 B))
     (= E (+ 1 A))
     (= M D)
     (= N E)
     (= C true)
     (= C (not (<= L B))))
      )
      (main@.lr.ph F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph G H I J K L C B A)
        (and (= E (+ 1 A)) (= F (+ 1 B)) (= M F) (= N E) (not D) (= D (not (<= C B))))
      )
      (main@.loopexit G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) ) 
    (=>
      (and
        (main@._crit_edge N O G E A C F)
        (and (= B (= G E))
     (= J (and B A))
     (= D (not C))
     (= I (or D J))
     (= M (ite I J K))
     (= H (+ E (* (- 1) F)))
     (= L true)
     (= K (= G H)))
      )
      (main@postcall3 M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) ) 
    (=>
      (and
        (main@._crit_edge A B I G C E H)
        (and (= L (and D C))
     (= D (= I G))
     (= K (or L F))
     (= M (= I J))
     (= O (ite K L M))
     (= P O)
     (= J (+ G (* (- 1) H)))
     (not N)
     (= F (not E)))
      )
      (main@assert P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@postcall3 A C D)
        (and (= F (= C D)) (= G F) (not B) (not E) (= B (not A)))
      )
      (main@assert G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@assert A)
        (and (= B true) (= B (not A)))
      )
      main@assert.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@assert.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
