(set-logic HORN)

(declare-fun |main@.lr.ph8.i.us| ( Int Int Int Int Int Int Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.preheader9| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader2.i.us| ( Int Int Int Int Int Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph28| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.preheader12| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph76| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry.split.us.preheader| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@postcall6.us.lr.ph| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@_33| ( Int Int Int Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@entry.split.us.loopexit| ( Int Int Int Int ) Bool)
(declare-fun |main@precall7| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader.i.us| ( Int Int Int Int Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph.i.us| ( Int Int Int Int Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@merge.exit.us| ( Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@.lr.ph12.i.us| ( Int Int Int Int Int Int Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.preheader1.i.us| ( Int Int Int Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@.preheader11| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph24| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge13.i.us| ( Int Int Int Int Int Int Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.lr.ph24.preheader| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@postcall6.us| ( Int Int Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@.preheader2.i.us.backedge| ( Int Int Int Int Int Int Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@precall7.preheader| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_20| ( Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.preheader12.backedge| ( Int Int Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= A D) (= F (+ (- 1) E)) (not B) (= C true) (= C (not (<= E 1))))
      )
      (main@entry.split.us.preheader D E F)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@entry.split.us.preheader B E F)
        (and (= D 2) (= G 1) (= H 1) (= I 1) (= A true) (not J) (= C 0))
      )
      (main@postcall6.us.lr.ph B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry.split.us.preheader H A B)
        (and (= F 0) (= D 1) (= G 1) (= I 0) (not C) (= E 1))
      )
      (main@precall7.preheader D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) ) 
    (=>
      (and
        (main@entry.split.us.loopexit K J N O)
        (and (= B (not (<= N G)))
     (= H (= J 0))
     (= S H)
     (= C (+ (- 1) G))
     (= E (+ F (* (- 1) I)))
     (= F (ite B C O))
     (= G (* 2 J))
     (= I (+ (- 1) J))
     (= L I)
     (= M G)
     (= P J)
     (= Q E)
     (= R F)
     (= A true)
     (= D true)
     (= A (not (<= N J))))
      )
      (main@postcall6.us.lr.ph K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@entry.split.us.loopexit Q I D G)
        (and (= E (not (<= D C)))
     (= A (not (<= D I)))
     (= C (* 2 I))
     (= F (+ (- 1) C))
     (= J (+ (- 1) I))
     (= K (ite E F G))
     (= N L)
     (= L (+ K (* (- 1) J)))
     (= O J)
     (= M K)
     (= P I)
     (= R 0)
     (not H)
     (= A true)
     (= B (= I 0)))
      )
      (main@precall7.preheader M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) ) 
    (=>
      (and
        (main@postcall6.us.lr.ph C D F G H L A B M)
        (and (= I A) (= J B) (= K 0) (= E F))
      )
      (main@postcall6.us C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) ) 
    (=>
      (and
        (main@_20 I J H L M N R S)
        (and (= B (+ (- 1) G))
     (= C (+ J H))
     (= E (+ F (* (- 1) C)))
     (= F (ite A B N))
     (= G (+ H L))
     (= K G)
     (= O E)
     (= P F)
     (= Q H)
     (= D true)
     (= A (not (<= M G))))
      )
      (main@postcall6.us I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@_20 S K L B D G J A)
        (and (= C (+ L B))
     (= F (+ (- 1) C))
     (= H (+ K L))
     (= M (ite E F G))
     (= P N)
     (= N (+ M (* (- 1) H)))
     (= Q K)
     (= O M)
     (= R J)
     (= T L)
     (not I)
     (= E (not (<= D C))))
      )
      (main@precall7.preheader O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@postcall6.us A B C D E F G H I J K)
        (and (= K true) (= L 0))
      )
      (main@.preheader1.i.us A B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) ) 
    (=>
      (and
        (main@postcall6.us A B C D E F G H I J K)
        (and (= M 0) (not K) (= L 0))
      )
      (main@.preheader2.i.us A B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.preheader2.i.us E F G H I J K L M N O A B)
        (and (= D (+ 1 B)) (= P 0) (= Q D) (= C true) (= C (not (<= K B))))
      )
      (main@.preheader2.i.us.backedge E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) ) 
    (=>
      (and
        (main@.preheader2.i.us D E F G H I J K L M N O B)
        (and (= A (+ 1 B)) (not C) (= C (not (<= J B))))
      )
      (main@_33 D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) ) 
    (=>
      (and
        (main@.preheader2.i.us.backedge C D E F G H I J K L M A B)
        (and (= O B) (= N A))
      )
      (main@.preheader2.i.us C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) ) 
    (=>
      (and
        (main@_33 D E F G H I J K L M N A)
        (and (= C (+ 1 A)) (= O C) (= P 0) (= B true) (= B (not (<= E A))))
      )
      (main@.preheader2.i.us.backedge D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) ) 
    (=>
      (and
        (main@_33 D E F G H I J K L M N A)
        (and (= C (+ 1 A)) (= O C) (not B) (= B (not (<= E A))))
      )
      (main@.preheader1.i.us D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.preheader1.i.us F G H I J K L M D N O E)
        (and (= A (not (<= L 0)))
     (= C (and A B))
     (= P E)
     (= Q 0)
     (= R D)
     (= C true)
     (= B (not (<= N E))))
      )
      (main@.lr.ph12.i.us F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.preheader1.i.us F G H I J K L M E N O D)
        (and (= A (not (<= L 0)))
     (= C (and A B))
     (= P 0)
     (= Q E)
     (= R D)
     (not C)
     (= B (not (<= N D))))
      )
      (main@._crit_edge13.i.us F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) ) 
    (=>
      (and
        (main@.lr.ph12.i.us P Q R S T U V W X Y D G I)
        (and (= F (= B 0))
     (= L (and K J))
     (= J (not (<= X O)))
     (= K (not (<= V N)))
     (= A P)
     (= E (ite C 1 0))
     (= H (ite F 1 0))
     (= M (+ 1 I))
     (= N (+ G H))
     (= O (+ D E))
     (= Z O)
     (= A1 N)
     (= B1 M)
     (= L true)
     (= C (not F)))
      )
      (main@.lr.ph12.i.us P Q R S T U V W X Y Z A1 B1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) (Z Int) (A1 Int) (B1 Int) ) 
    (=>
      (and
        (main@.lr.ph12.i.us P Q R S T U V W X Y D G I)
        (and (= F (= B 0))
     (= L (and K J))
     (= J (not (<= X M)))
     (= K (not (<= V N)))
     (= A P)
     (= E (ite C 1 0))
     (= H (ite F 1 0))
     (= M (+ D E))
     (= N (+ G H))
     (= O (+ 1 I))
     (= Z N)
     (= A1 O)
     (= B1 M)
     (not L)
     (= C (not F)))
      )
      (main@._crit_edge13.i.us P Q R S T U V W X Y Z A1 B1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@._crit_edge13.i.us E F G H I J K L M N O C D)
        (and (= B (not (<= M D)))
     (= P C)
     (= Q D)
     (not A)
     (= B true)
     (= A (not (<= C L))))
      )
      (main@.lr.ph8.i.us E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) ) 
    (=>
      (and
        (main@._crit_edge13.i.us E F G H I J K L M N O D B)
        (and (= A (not (<= D L))) (= P D) (not C) (not A) (= C (not (<= M B))))
      )
      (main@.preheader.i.us E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph8.i.us G H I J K L M N O P Q B C)
        (and (= D (not (<= H C)))
     (= E (+ 1 B))
     (= F (+ 1 C))
     (= R E)
     (= S F)
     (not A)
     (= D true)
     (= A (not (<= B N))))
      )
      (main@.lr.ph8.i.us G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph8.i.us G H I J K L M N O P Q C D)
        (and (= A (not (<= C N)))
     (= B (+ 1 D))
     (= F (+ 1 C))
     (= R F)
     (not E)
     (not A)
     (= E (not (<= H D))))
      )
      (main@.preheader.i.us G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) ) 
    (=>
      (and
        (main@.preheader.i.us D E F G H I J K L M C B)
        (and (= N B) (= O C) (= A true) (= A (not (<= J C))))
      )
      (main@.lr.ph.i.us D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) ) 
    (=>
      (and
        (main@.preheader.i.us F G H I J K D A L M C B)
        (and (not E) (= E (not (<= D C))))
      )
      (main@merge.exit.us F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph.i.us G H I J K L M N O P C B)
        (and (= A (not (<= C N)))
     (= E (+ 1 C))
     (= F (+ 1 B))
     (= Q E)
     (= R F)
     (= D true)
     (not A)
     (= D (not (<= M F))))
      )
      (main@.lr.ph.i.us G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) ) 
    (=>
      (and
        (main@.lr.ph.i.us I J K L M N G A O P E C)
        (and (= B (not (<= E A)))
     (= D (+ 1 E))
     (= F (+ 1 C))
     (not H)
     (not B)
     (= H (not (<= G F))))
      )
      (main@merge.exit.us I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@merge.exit.us B C D E F G H I)
        (and (= A true) (= A (not (<= G D))))
      )
      (main@_20 B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@merge.exit.us F A D G H I B C)
        (and (not E) (= E (not (<= I D))))
      )
      (main@entry.split.us.loopexit F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.preheader11 F G H I J E D)
        (and (= C (and B A))
     (= B (not (<= G 0)))
     (= K E)
     (= L 0)
     (= M D)
     (= C true)
     (= A (not (<= I E))))
      )
      (main@.lr.ph28 F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.preheader11 G H J M A E F)
        (and (= B (not (<= M E)))
     (= D (and B C))
     (= I 0)
     (= K F)
     (= L E)
     (not D)
     (= C (not (<= H 0))))
      )
      (main@._crit_edge G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.preheader12 E F G H I J A B)
        (and (= D (+ 1 B)) (= K 0) (= L D) (= C true) (= C (not (<= F B))))
      )
      (main@.preheader12.backedge E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.preheader12 D E F G H I J B)
        (and (= A (+ 1 B)) (not C) (= C (not (<= E B))))
      )
      (main@precall7 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.preheader12.backedge C D E F G H A B)
        (and (= J B) (= I A))
      )
      (main@.preheader12 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@precall7 D E F G H I A)
        (and (= C (+ 1 A)) (= J C) (= K 0) (= B true) (= B (not (<= F A))))
      )
      (main@.preheader12.backedge D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@precall7 D E F G H J A)
        (and (= C (+ 1 A)) (= I C) (not B) (= B (not (<= F A))))
      )
      (main@.preheader11 D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph28 P Q R S T D G I)
        (and (= K (not (<= Q N)))
     (= J (not (<= S O)))
     (= F (= B 0))
     (= L (and J K))
     (= A T)
     (= E (ite C 1 0))
     (= H (ite F 1 0))
     (= M (+ 1 I))
     (= N (+ G H))
     (= O (+ D E))
     (= U O)
     (= V N)
     (= W M)
     (= L true)
     (= C (not F)))
      )
      (main@.lr.ph28 P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph28 Q R T W B E H J)
        (and (= D (not G))
     (= G (= C 0))
     (= M (and L K))
     (= L (not (<= R O)))
     (= A B)
     (= F (ite D 1 0))
     (= I (ite G 1 0))
     (= N (+ E F))
     (= O (+ H I))
     (= P (+ 1 J))
     (= S O)
     (= U P)
     (= V N)
     (not M)
     (= K (not (<= W N))))
      )
      (main@._crit_edge Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@._crit_edge G A B C F D E)
        (and (= H true) (= H (not (<= F G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@._crit_edge B C D E F G H)
        (and (not A) (= A (not (<= F B))))
      )
      (main@.preheader9 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader9 C D E F G H A)
        (and (= B true) (= B (not (<= A H))))
      )
      (main@.lr.ph24.preheader C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.preheader9 F G H A E B C)
        (and (= I E) (not D) (= D (not (<= C B))))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@.lr.ph24.preheader F A B C E D)
        (and (= G true) (= G (not (<= E F))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph24.preheader F G H I C B)
        (and (= E C) (= D B) (not A) (= A (not (<= C F))))
      )
      (main@.lr.ph76 D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) ) 
    (=>
      (and
        (main@.preheader E B A D)
        (and (= C (not (<= B A))) (= F true) (= C true) (= F (not (<= D E))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader E H D C)
        (and (= B (not (<= C E)))
     (= F D)
     (= G C)
     (= A true)
     (not B)
     (= A (not (<= H D))))
      )
      (main@.lr.ph E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph24 A B H E I J K)
        (and (= D (+ 1 A)) (= G E) (= F D) (= C true) (= C (not (<= H B))))
      )
      (main@.lr.ph76 F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@.lr.ph24 F G H A B C D)
        (and (= E (+ 1 F)) (not I) (= I (not (<= H G))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph76 B C D F G H)
        (and (= E (+ 1 C)) (= A true) (= A (not (<= H B))))
      )
      (main@.lr.ph24 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph76 B A F G H C)
        (and (= E (+ 1 A)) (= I E) (not D) (= D (not (<= C B))))
      )
      (main@.preheader F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph G A C J)
        (and (= D (not (<= G C)))
     (= F (+ 1 A))
     (= E (+ 1 C))
     (= H F)
     (= I E)
     (= B true)
     (= D true)
     (= B (not (<= J F))))
      )
      (main@.lr.ph G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph G A F D)
        (and (= E (not (<= D C)))
     (= B (+ 1 F))
     (= C (+ 1 A))
     (not H)
     (= E true)
     (= H (not (<= G F))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@precall7.preheader B C D E F H)
        (and (= G 0) (= A true) (= A (= E 0)))
      )
      (main@.preheader11 B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@precall7.preheader B C D E F G)
        (and (= H 0) (= I 0) (not A) (= A (= E 0)))
      )
      (main@.preheader12 B C D E F G H I)
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
