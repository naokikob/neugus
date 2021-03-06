(set-logic HORN)

(declare-fun |main@_107| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_30| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_26| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_48| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_63| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_122| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@_86| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_38| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_72| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_34| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_76| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_57| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_92| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_96| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_67| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_44| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_53| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_102| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_22| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_82| ( Int Int Int Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@entry L)
        (and (= J (not (<= O 0)))
     (= N (= M 0))
     (= C L)
     (= D L)
     (= E L)
     (= F L)
     (= G L)
     (= H L)
     (= I L)
     (= K L)
     (= P 0)
     (= Q 0)
     (= R 0)
     (= S 0)
     (= T O)
     (= U 0)
     (= V 0)
     (= B true)
     (= J true)
     (= N true)
     (= B (= A 0)))
      )
      (main@._crit_edge P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@entry N)
        (and (= I (not (<= M 0)))
     (= L (= K 0))
     (= B N)
     (= J N)
     (= C N)
     (= D N)
     (= E N)
     (= F N)
     (= G N)
     (= H N)
     (= P M)
     (= Q 0)
     (= R 0)
     (= S 0)
     (= T 0)
     (= U 0)
     (= V 0)
     (= A true)
     (= I true)
     (not L)
     (= A (= O 0)))
      )
      (main@.lr.ph N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_26 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_22 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_22 K L J I H G F B C)
        (and (= D (+ 1 C))
     (= E (+ (- 1) B))
     (= M D)
     (= N E)
     (= O F)
     (= P G)
     (= Q H)
     (= R I)
     (= S J)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_107 K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_26 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_34 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_26 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_30 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_30 K L J I B C F E D)
        (and (= G (+ 1 C))
     (= H (+ (- 1) B))
     (= M D)
     (= N E)
     (= O F)
     (= P G)
     (= Q H)
     (= R I)
     (= S J)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_107 K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_34 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_44 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_34 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_38 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_38 M N H B J I F C D)
        (and (= E (+ C D))
     (= G (+ E F))
     (= K (+ (- 1) B))
     (= L (+ G H))
     (= O 0)
     (= P 1)
     (= Q 0)
     (= R I)
     (= S J)
     (= T K)
     (= U L)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_107 M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_44 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_53 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_44 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_48 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@_48 L M G J I H E B C)
        (and (= D (+ B C))
     (= F (+ D E))
     (= K (+ F G))
     (= N 0)
     (= O 1)
     (= P 0)
     (= Q H)
     (= R I)
     (= S J)
     (= T K)
     (= A true)
     (= A (not (<= E 0))))
      )
      (main@_107 L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_53 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_63 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_53 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_57 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_57 M N H F C D B J I)
        (and (= E (+ C D))
     (= G (+ E F))
     (= K (+ (- 1) B))
     (= L (+ G H))
     (= O I)
     (= P J)
     (= Q K)
     (= R 0)
     (= S 1)
     (= T 0)
     (= U L)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_107 M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_63 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_72 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_63 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_67 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@_67 L M G E B C J I H)
        (and (= D (+ B C))
     (= F (+ D E))
     (= K (+ F G))
     (= N H)
     (= O I)
     (= P J)
     (= Q 0)
     (= R 1)
     (= S 0)
     (= T K)
     (= A true)
     (= A (not (<= E 0))))
      )
      (main@_107 L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_72 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_82 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_72 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_76 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_76 M N L B J I G C D)
        (and (= E (+ C D))
     (= F (+ 1 E))
     (= H (+ F G))
     (= K (+ (- 1) B))
     (= O 0)
     (= P 0)
     (= Q H)
     (= R I)
     (= S J)
     (= T K)
     (= U L)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_107 M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_82 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_92 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_82 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_86 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_86 M N B K J I G C D)
        (and (= E (+ C D))
     (= F (+ 1 E))
     (= H (+ F G))
     (= L (+ (- 1) B))
     (= O 0)
     (= P 0)
     (= Q H)
     (= R I)
     (= S J)
     (= T K)
     (= U L)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_107 M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_92 E F G A H I J K L)
        (and (= B E) (= D true) (= D (= C 0)))
      )
      (main@_102 E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_92 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_96 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_96 M N B G C D J I H)
        (and (= E (+ C D))
     (= F (+ 1 E))
     (= K (+ F G))
     (= L (+ (- 1) B))
     (= O H)
     (= P I)
     (= Q J)
     (= R 0)
     (= S 0)
     (= T K)
     (= U L)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_107 M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_102 K L J C D B G F)
        (and (= E (+ C D))
     (= H (+ (- 1) B))
     (= I (+ 1 E))
     (= M F)
     (= N G)
     (= O H)
     (= P 0)
     (= Q 0)
     (= R I)
     (= S J)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_107 K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_107 B D F G H I J K L)
        (and (= A B)
     (= M H)
     (= N I)
     (= O J)
     (= P K)
     (= Q L)
     (= R G)
     (= S F)
     (= E true)
     (= E (= C D)))
      )
      (main@._crit_edge M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_107 K L J I H G F E D)
        (and (= A K)
     (= M D)
     (= N E)
     (= O F)
     (= P G)
     (= Q H)
     (= R I)
     (= S J)
     (not C)
     (= C (= B L)))
      )
      (main@.lr.ph K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Int) (R Bool) (S Bool) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) ) 
    (=>
      (and
        (main@._crit_edge V W X Y Z Q N)
        (and (= C (not (<= 2 A)))
     (= D (and C B))
     (= I (and F G))
     (= K (and H I))
     (= O (not (<= N (- 1))))
     (= S (and P O))
     (= T (and R S))
     (= J (not (<= X (- 1))))
     (= L (not (<= V (- 1))))
     (= G (and E D))
     (= H (not (<= W (- 1))))
     (= E (not (<= Z (- 1))))
     (= M (and J K))
     (= P (and M L))
     (= F (not (<= Y (- 1))))
     (= R (not (<= Q (- 1))))
     (= A (+ X W))
     (= U (+ Q N))
     (= T true)
     (= B (not (<= 2 U))))
      )
      (main@_122 U V W X Y Z)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Bool) (G Bool) (H Int) (I Bool) (J Bool) (K Int) (L Bool) (M Bool) (N Int) (O Bool) (P Bool) (Q Int) (R Bool) (S Bool) (T Int) (U Bool) (V Bool) (W Int) (X Bool) (Y Bool) (Z Bool) ) 
    (=>
      (and
        (main@._crit_edge Q K N H E W T)
        (and (= V (and R S))
     (= X (not (<= W (- 1))))
     (= Y (and V U))
     (= Z (and Y X))
     (= C (not (<= 2 B)))
     (= D (not (<= 2 A)))
     (= I (not (<= H (- 1))))
     (= O (not (<= N (- 1))))
     (= S (and P O))
     (= J (and F G))
     (= L (not (<= K (- 1))))
     (= G (not (<= E (- 1))))
     (= M (and J I))
     (= P (and M L))
     (= F (and D C))
     (= R (not (<= Q (- 1))))
     (= B (+ W T))
     (= A (+ N K))
     (not Z)
     (= U (not (<= T (- 1)))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) ) 
    (=>
      (and
        (main@_122 A B D F H J)
        (and (= C (+ A B))
     (= E (+ C D))
     (= G (+ E F))
     (= I (+ G H))
     (= K (+ I J))
     (not L)
     (= L (not (<= K 0))))
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
