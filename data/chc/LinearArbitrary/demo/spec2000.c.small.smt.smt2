(set-logic HORN)

(declare-fun |main@_43| ( Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@_23| ( Int Int Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_25| ( Int Int Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@_28| ( Int Int Int Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@_34| ( Int Int Int Int Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@.thread15.us| ( Int Int Int Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@.thread15| ( Int Int Int Int Int Bool Int Int Int Bool ) Bool)
(declare-fun |main@.thread.us| ( Int Int Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@_57| ( Int Int Int Int Int Int Bool Int Int Int Int Bool ) Bool)
(declare-fun |main@_66| ( Int Int ) Bool)
(declare-fun |main@_39| ( Int Int Int Int Int Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@_62| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.thread| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@entry.split.us| ( Int Int Int Int Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@_52| ( Int Int Int Int Int Bool Int Int Int Int Bool ) Bool)
(declare-fun |main@entry.split| ( Int Int Int Int Int Int Int Int Bool ) Bool)
(declare-fun |main@.us_lcssa.us| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) (Y Int) ) 
    (=>
      (and
        (main@entry W)
        (and (= B (= R 1))
     (= D (= C 1))
     (= L (= O 1))
     (= M (and X L))
     (= N (not (<= O 1)))
     (= X (not (<= 1 P)))
     (= E W)
     (= F W)
     (= G W)
     (= H W)
     (= I W)
     (= J W)
     (= K W)
     (= T 0)
     (= U 0)
     (= V 0)
     (= Y (ite M 1 0))
     (= A true)
     (= B true)
     (= D true)
     (= N true)
     (= A (= S 0)))
      )
      (main@entry.split.us O P Q R S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) ) 
    (=>
      (and
        (main@entry T)
        (and (= P (not (<= Q 1)))
     (= Y (and N M))
     (= B (= A 0))
     (= D (= C 1))
     (= M (= Q 1))
     (= N (not (<= 1 R)))
     (= L T)
     (= X 0)
     (= F T)
     (= G T)
     (= H T)
     (= I T)
     (= J T)
     (= K T)
     (= O (ite Y 1 0))
     (= V 0)
     (= W 0)
     (= E true)
     (not P)
     (= B true)
     (= D true)
     (= E (= U 1)))
      )
      (main@entry.split Q R S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@entry.split.us B C D E F G H I J K L)
        (and (= A true) (= A (= G 0)))
      )
      (main@_23 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@entry.split.us B C D E F G H I J K L)
        (and (not A) (= A (= G 0)))
      )
      (main@.thread.us B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) ) 
    (=>
      (and
        (main@.thread.us F G H I J K D A L P Q)
        (and (= C (ite B 1 0)) (= M C) (= N D) (= O E) (= E (+ 1 A)) (= B (>= A H)))
      )
      (main@.thread15.us F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) ) 
    (=>
      (and
        (main@_23 D E F G H I A C J N O)
        (and (= K O) (= L 1) (= M C) (= B true) (= B (= A 0)))
      )
      (main@.thread15.us D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@_23 B C D E F G H I J K L)
        (and (not A) (= A (= H 0)))
      )
      (main@_25 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Int) ) 
    (=>
      (and
        (main@_25 H I J K L M A G N R S)
        (and (= E (= A 1))
     (= D (and R C))
     (= F (ite D 1 0))
     (= B (ite E H 1000))
     (= O F)
     (= P H)
     (= Q G)
     (= E true)
     (= C (= B H)))
      )
      (main@.thread15.us H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Int) ) 
    (=>
      (and
        (main@_25 I J K L N A C B R S T)
        (and (= G (= C 1))
     (= E (= D I))
     (= D (ite G I 1000))
     (= M H)
     (= O 1)
     (= P 1000)
     (= Q 1)
     (= H (ite F 1 0))
     (not G)
     (= F (and E S)))
      )
      (main@_28 I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) ) 
    (=>
      (and
        (main@.thread15.us E F G H J B N A C D O P)
        (and (= K B) (= L C) (= M D) (= I A))
      )
      (main@_28 E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Int) ) 
    (=>
      (and
        (main@_28 E F G I J K L M N P Q R)
        (and (= D (= O 0))
     (= A P)
     (= H 0)
     (= O (ite B C 5000))
     (= D true)
     (= B (not (<= 5000 C))))
      )
      (main@_39 E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) ) 
    (=>
      (and
        (main@_28 E F G H I J K L M O P Q)
        (and (= B (not (<= 5000 C))) (= A O) (= N (ite B C 5000)) (not D) (= D (= N 0)))
      )
      (main@_34 E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Int) ) 
    (=>
      (and
        (main@_34 F G H J K L M N O P Q R S)
        (and (= C (not (<= E P)))
     (= D (or C B))
     (= A Q)
     (= I E)
     (not D)
     (= B (not (<= 0 E))))
      )
      (main@_39 F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Int) ) 
    (=>
      (and
        (main@_39 J K L B M C N G H I A R S T)
        (and (= F (and E D))
     (= E (not (<= M B)))
     (= O G)
     (= P H)
     (= Q I)
     (= F true)
     (= D (= C N)))
      )
      (main@entry.split.us J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_39 R S U L E F G A N M K B C D)
        (and (= I (not (<= E L)))
     (= J (and I H))
     (= T M)
     (= O L)
     (= P K)
     (= Q N)
     (not J)
     (= H (= F G)))
      )
      (main@.us_lcssa.us O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@entry.split C D E F G A H I J)
        (and (= B true) (= B (= A 0)))
      )
      (main@_43 C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@entry.split B C D E F G H I J)
        (and (not A) (= A (= G 0)))
      )
      (main@.thread B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Bool) ) 
    (=>
      (and
        (main@_43 I J K L M A D R)
        (and (= B (not C))
     (= E (and C R))
     (= C (= A 0))
     (= Q H)
     (= H (ite C D 1))
     (= O F)
     (= P G)
     (= F (ite B 1 0))
     (= G (ite C 1 1000))
     (= N E))
      )
      (main@.thread15 I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Bool) ) 
    (=>
      (and
        (main@.thread F G H I J C D A O)
        (and (= B (>= A H)) (= N E) (= E (+ 1 A)) (= L C) (= M D) (= K B))
      )
      (main@.thread15 F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Bool) ) 
    (=>
      (and
        (main@.thread15 E F G H J K L M N P)
        (and (= D (= O 0))
     (= O (ite B C 5000))
     (= A H)
     (= I 0)
     (= D true)
     (= B (not (<= 5000 C))))
      )
      (main@_57 E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Bool) ) 
    (=>
      (and
        (main@.thread15 E F G H I J K L M O)
        (and (= D (= N 0)) (= N (ite B C 5000)) (= A H) (not D) (= B (not (<= 5000 C))))
      )
      (main@_52 E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Bool) ) 
    (=>
      (and
        (main@_52 F G H I K L M N O P Q)
        (and (= D (or B C))
     (= B (not (<= 0 E)))
     (= A I)
     (= J E)
     (not D)
     (= C (not (<= E P))))
      )
      (main@_57 F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) ) 
    (=>
      (and
        (main@_57 J K L M B N C G H I A R)
        (and (= E (not C))
     (= F (and E D))
     (= Q I)
     (= O G)
     (= P H)
     (= F true)
     (= D (not (<= N B))))
      )
      (main@entry.split J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_57 P Q S A J D E B L K I C)
        (and (= G (not E))
     (= H (and G F))
     (= R K)
     (= M J)
     (= N I)
     (= O L)
     (not H)
     (= F (not (<= D J))))
      )
      (main@.us_lcssa.us M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.us_lcssa.us I J A B C D E)
        (and (= F (not (<= I 0))) (= H (or F G)) (= H true) (= G (not (<= D E))))
      )
      (main@_66 I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.us_lcssa.us F G H I J A B)
        (and (= D (not (<= A B))) (= E (or D C)) (not E) (= C (not (<= F 0))))
      )
      (main@_62 F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (main@_62 F G A B C)
        (and (= E (not (= A B)))
     (= H (not (<= F G)))
     (= J (or I H))
     (= I (or E D))
     (= J true)
     (= D (not (<= C 0))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_66 A B)
        (and (= C true) (= C (not (<= A B))))
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
