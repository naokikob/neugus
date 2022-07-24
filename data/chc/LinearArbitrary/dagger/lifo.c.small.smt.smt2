(set-logic HORN)

(declare-fun |main@_107| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_61| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_70| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@_22| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_95| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_80| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_118| ( Int ) Bool)
(declare-fun |main@_37| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_66| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_31| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_76| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_57| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_99| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_89| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_27| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_41| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_85| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int ) Bool)
(declare-fun |main@_47| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_51| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_103| ( Int Int Int Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@entry M)
        (and (= K (not (<= J 0)))
     (= O (= N 0))
     (= C M)
     (= D M)
     (= E M)
     (= F M)
     (= G M)
     (= H M)
     (= I M)
     (= L M)
     (= P 0)
     (= Q 0)
     (= R 0)
     (= S 0)
     (= B true)
     (= K true)
     (= O true)
     (= B (= A 0)))
      )
      (main@._crit_edge P Q R S)
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
     (= C N)
     (= E N)
     (= R 0)
     (= D N)
     (= F N)
     (= G N)
     (= H N)
     (= J N)
     (= P M)
     (= Q 0)
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
      (main@_27 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph E F G A H I J K L)
        (and (= B E) (not D) (= D (= C 0)))
      )
      (main@_22 E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_22 K L J C D B G F)
        (and (= O 0)
     (= E (+ C D))
     (= H (+ (- 1) B))
     (= I (+ 1 E))
     (= M F)
     (= N G)
     (= P 0)
     (= Q J)
     (= R I)
     (= S H)
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
        (main@_27 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_37 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_27 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_31 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_31 M N B G C D J I H)
        (and (= Q 0)
     (= E (+ C D))
     (= F (+ 1 E))
     (= K (+ F G))
     (= L (+ (- 1) B))
     (= O H)
     (= P I)
     (= R 0)
     (= S L)
     (= T K)
     (= U J)
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
        (main@_37 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_47 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_37 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_41 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_41 M N B K J I G C D)
        (and (= Q I)
     (= E (+ C D))
     (= F (+ 1 E))
     (= H (+ F G))
     (= L (+ (- 1) B))
     (= O 0)
     (= P 0)
     (= R J)
     (= S L)
     (= T K)
     (= U H)
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
        (main@_47 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_57 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_47 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_51 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_51 M N L B J I G C D)
        (and (= Q I)
     (= E (+ C D))
     (= F (+ 1 E))
     (= H (+ F G))
     (= K (+ (- 1) B))
     (= O 0)
     (= P 0)
     (= R J)
     (= S L)
     (= T K)
     (= U H)
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
        (main@_57 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_66 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_57 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_61 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@_61 L M G E B C J I H)
        (and (= P 0)
     (= D (+ B C))
     (= F (+ D E))
     (= K (+ F G))
     (= N H)
     (= O I)
     (= Q 1)
     (= R K)
     (= S 0)
     (= T J)
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
        (main@_66 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_76 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_66 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_70 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_70 M N H F C D B J I)
        (and (= Q 0)
     (= E (+ C D))
     (= G (+ E F))
     (= K (+ (- 1) B))
     (= L (+ G H))
     (= O I)
     (= P J)
     (= R 1)
     (= S L)
     (= T 0)
     (= U K)
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
        (main@_76 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_85 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_76 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_80 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@_80 L M G J I H E B C)
        (and (= P H)
     (= D (+ B C))
     (= F (+ D E))
     (= K (+ F G))
     (= N 0)
     (= O 1)
     (= Q I)
     (= R K)
     (= S J)
     (= T 0)
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
        (main@_85 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_95 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_85 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_89 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_89 M N H B J I F C D)
        (and (= Q I)
     (= E (+ C D))
     (= G (+ E F))
     (= K (+ (- 1) B))
     (= L (+ G H))
     (= O 0)
     (= P 1)
     (= R J)
     (= S L)
     (= T K)
     (= U 0)
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
        (main@_95 D E F G H I J K L)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_103 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_95 D E F G H I J K L)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_99 D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_99 K L J I B C F E D)
        (and (= O G)
     (= G (+ 1 C))
     (= H (+ (- 1) B))
     (= M D)
     (= N E)
     (= P H)
     (= Q J)
     (= R I)
     (= S F)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_107 K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_103 K L J I H G F B C)
        (and (= O G)
     (= D (+ 1 C))
     (= E (+ (- 1) B))
     (= M D)
     (= N E)
     (= P H)
     (= Q J)
     (= R I)
     (= S F)
     (= A true)
     (= A (not (<= B 0))))
      )
      (main@_107 K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_107 E G I J K L A B C)
        (and (= D E) (= M L) (= N K) (= O J) (= P I) (= H true) (= H (= F G)))
      )
      (main@._crit_edge M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_107 K L J I G F D E H)
        (and (= O F)
     (= A K)
     (= M D)
     (= N E)
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
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Bool) (G Bool) (H Int) (I Bool) (J Bool) (K Int) (L Bool) (M Bool) (N Bool) (O Int) ) 
    (=>
      (and
        (main@._crit_edge O K H E)
        (and (= D (not (<= 2 A)))
     (= I (not (<= H (- 1))))
     (= J (and F G))
     (= L (not (<= K (- 1))))
     (= M (and J I))
     (= N (and M L))
     (= G (and D C))
     (= F (not (<= E (- 1))))
     (= A (+ O K))
     (= B (+ H E))
     (= N true)
     (= C (not (<= 2 B))))
      )
      (main@_118 O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Bool) (H Bool) (I Int) (J Bool) (K Bool) (L Int) (M Bool) (N Bool) (O Bool) ) 
    (=>
      (and
        (main@._crit_edge A L I F)
        (and (= O (and N M))
     (= D (not (<= 2 C)))
     (= J (not (<= I (- 1))))
     (= M (not (<= L (- 1))))
     (= N (and K J))
     (= E (not (<= 2 B)))
     (= G (not (<= F (- 1))))
     (= K (and G H))
     (= B (+ A L))
     (= C (+ I F))
     (not O)
     (= H (and E D)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@_118 A)
        (and (not B) (= B (not (<= A (- 1)))))
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
