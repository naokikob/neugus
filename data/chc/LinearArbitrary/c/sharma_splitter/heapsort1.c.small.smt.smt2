(set-logic HORN)

(declare-fun |main@.preheader| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_17| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_29| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_37| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_35| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_25| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_22| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge18| ( Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_11| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_42| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_14| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_40| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_33| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Int) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@entry Q)
        (and (= B (= S 1))
     (= C (= R 0))
     (= D (= P 0))
     (= E (= O 1))
     (= F (= K 1))
     (= H (not (<= J 0)))
     (= I (not (<= N 1)))
     (= G Q)
     (= L J)
     (= M N)
     (= N (* 2 J))
     (= A true)
     (= B true)
     (= C true)
     (= D true)
     (= E true)
     (= F true)
     (= H true)
     (= I true)
     (= A (= T 0)))
      )
      (main@.preheader K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Int) (O Bool) (P Int) (Q Bool) (R Int) (S Int) ) 
    (=>
      (and
        (main@entry N)
        (and (= J (= I 1))
     (= L (= K 1))
     (= O (not (<= R 0)))
     (= Q (not (<= P 1)))
     (= B (= A 0))
     (= D (= C 1))
     (= H (= G 0))
     (= M N)
     (= P (* 2 R))
     (= S R)
     (= F true)
     (= J true)
     (= L true)
     (= O true)
     (not Q)
     (= B true)
     (= D true)
     (= H true)
     (= F (= E 0)))
      )
      (main@._crit_edge18 S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.preheader C D E F G H I J K L)
        (and (= A (* 2 D)) (= B true) (= B (not (<= A E))))
      )
      (main@._crit_edge C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.preheader C D E F G J K L M N)
        (and (= B (* 2 D)) (= H B) (= I D) (not A) (= A (not (<= B E))))
      )
      (main@.lr.ph C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_11 D E F G H A I J K L M)
        (and (= B (* 2 A)) (= C true) (= C (not (<= B F))))
      )
      (main@._crit_edge D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_11 D E F G H C K L M N O)
        (and (= B (* 2 C)) (= I B) (= J C) (not A) (= A (not (<= B F))))
      )
      (main@.lr.ph D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph B C D E F G H I J K L M)
        (and (= A true) (= A (not (<= D G))))
      )
      (main@_14 B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph C D E F G B I J K L M N)
        (and (= H B) (not A) (= A (not (<= E B))))
      )
      (main@_22 C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_14 D E F G H I J K L M N O)
        (and (= A (not (<= J O))) (= C (and A B)) (= C true) (= B (not (<= G I))))
      )
      (main@_17 D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) ) 
    (=>
      (and
        (main@_14 A B C L D K I E F G H J)
        (and (= O (and M N)) (= M (not (<= I J))) (not O) (= N (not (<= L K))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@_17 G H I J K D M N O P Q R)
        (and (= A O) (= F (+ D E)) (= E (ite C 1 0)) (= L F) (= C (not (= B 0))))
      )
      (main@_22 G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) ) 
    (=>
      (and
        (main@_22 A B C L D K E F G H J I)
        (and (= O (or M N)) (= M (not (<= J K))) (= O true) (= N (not (<= K L))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_22 D E F G H I J K L M N O)
        (and (= A (not (<= N I))) (= C (or A B)) (not C) (= B (not (<= I G))))
      )
      (main@_25 D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_25 D E F G H I J K L M N O)
        (and (= A L) (= C true) (= C (= B M)))
      )
      (main@_29 D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_25 F G H I J A B K L M N O)
        (and (= C L) (not E) (= E (= D M)))
      )
      (main@._crit_edge F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_29 E F G H I J A K L M N O)
        (and (= C (not (<= A K))) (= D (and C B)) (= D true) (= B (<= A H)))
      )
      (main@_11 E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) ) 
    (=>
      (and
        (main@_29 A B C L D E K J F G H I)
        (and (= O (and M N)) (= M (<= K L)) (not O) (= N (not (<= K J))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@._crit_edge B C D E F G H I J K)
        (and (= A true) (= A (not (<= C 1))))
      )
      (main@_33 B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@._crit_edge B C D E F G H I J K)
        (and (not A) (= A (not (<= C 1))))
      )
      (main@_37 B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (main@_33 A I B J C D E F G H)
        (and (= K true) (= K (not (<= I J))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@_33 B C D E F G H I J K)
        (and (not A) (= A (not (<= C E))))
      )
      (main@_35 B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_35 E A B G H I J K L M)
        (and (= D B) (= F C) (= C (+ (- 1) A)))
      )
      (main@_42 D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Bool) ) 
    (=>
      (and
        (main@_37 A B I J H C D E F G)
        (and (= M (or K L)) (= K (not (<= H I))) (= M true) (= L (not (<= I J))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_37 D E F G H I J K L M)
        (and (= B (not (<= F G))) (= C (or B A)) (not C) (= A (not (<= H F))))
      )
      (main@_40 D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_40 E C A G H I J K L M)
        (and (= F C) (= B (+ (- 1) A)) (= D B))
      )
      (main@_42 D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_42 C D B G H I J K L M)
        (and (= E B) (= F C) (= A true) (= A (not (<= C D))))
      )
      (main@.preheader D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) ) 
    (=>
      (and
        (main@_42 H I K A B C D E F G)
        (and (= L K) (not J) (= J (not (<= H I))))
      )
      (main@._crit_edge18 L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@._crit_edge18 A)
        (and (not B) (= B (= A 1)))
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
