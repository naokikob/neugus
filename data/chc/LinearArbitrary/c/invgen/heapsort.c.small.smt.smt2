(set-logic HORN)

(declare-fun |main@empty.loop| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@_33| ( Int Int Int Int Bool Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Bool Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_25| ( Int Int Int Int Bool Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.outer| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_40| ( Int Int Int Int Bool Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_22| ( Int Int Int Int Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_47| ( Int Int Int Int Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@_43| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@_36| ( Int Int Int Int Bool Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_28| ( Int Int Int Int Bool Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_45| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_50| ( Int Int Int Int Bool Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@entry T)
        (and (= B (= U 1))
     (= C (= S 0))
     (= D (= W 1))
     (= E (= R 1))
     (= H (not (<= Q 0)))
     (= K (= Q J))
     (= N (not (<= L 1)))
     (= O (not N))
     (= F T)
     (= G T)
     (= I (* 2 L))
     (= J (+ (- 2) I))
     (= M (ite N (- 1) 0))
     (= P (ite O (- 1) 0))
     (= X (+ L M))
     (= Y (+ Q P))
     (= A true)
     (= B true)
     (= C true)
     (= D true)
     (= E true)
     (= H true)
     (= K true)
     (= A (= V 0)))
      )
      (main@empty.loop Q R S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.outer B A D E G H I J L)
        (and (= C A) (= K (* 2 B)) (= F (not (<= B L))))
      )
      (main@_19 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_19 C D E F G H I J K L M)
        (and (= A (not (<= D 1))) (= B true) (= A true) (= B (not (<= L D))))
      )
      (main@._crit_edge C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_19 C D E F G J K L M N O)
        (and (= A (not (<= D 1)))
     (= H N)
     (= I C)
     (not B)
     (= A true)
     (= B (not (<= N D))))
      )
      (main@.lr.ph C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_22 D E F G H A I J K L M N)
        (and (= B (* 2 A)) (= C true) (= C (not (<= B E))))
      )
      (main@._crit_edge D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_22 D E F G H C K L M N O P)
        (and (= B (* 2 C)) (= I B) (= J C) (not A) (= A (not (<= B E))))
      )
      (main@.lr.ph D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph B C D E F G H I J K L M N)
        (and (= A true) (= A (not (<= C G))))
      )
      (main@_25 B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph C D E F G B I J K L M N O)
        (and (= H B) (not A) (= A (not (<= D B))))
      )
      (main@_33 C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_25 D E F G H I J K L M N O P)
        (and (= C (and B A)) (= B (not (<= F I))) (= C true) (= A (not (<= J N))))
      )
      (main@_28 D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Bool) ) 
    (=>
      (and
        (main@_25 A B M C D L J E F G K H I)
        (and (= O (not (<= M L))) (= P (and O N)) (not P) (= N (not (<= J K))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_28 G H I J K D M N O P Q R S)
        (and (= E (ite C 1 0)) (= A O) (= F (+ D E)) (= L F) (= C (not (= B 0))))
      )
      (main@_33 G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Bool) ) 
    (=>
      (and
        (main@_33 A B M C D L E F G K H I J)
        (and (= O (not (<= L M))) (= P (or O N)) (= P true) (= N (not (<= K L))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_33 D E F G H I J K L M N O P)
        (and (= C (or B A)) (= B (not (<= I F))) (not C) (= A (not (<= M I))))
      )
      (main@_36 D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_36 D E F G H I J K L M N O P)
        (and (= A L) (= C true) (= C (= B 0)))
      )
      (main@_40 D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_36 F G H I J A B K L M N O P)
        (and (= C L) (not E) (= E (= D 0)))
      )
      (main@._crit_edge F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_40 E F G H I J A K L M N O P)
        (and (= B (<= A G)) (= D (and B C)) (= D true) (= C (not (<= A K))))
      )
      (main@_22 E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Bool) ) 
    (=>
      (and
        (main@_40 A B M C D E L K F G H I J)
        (and (= O (not (<= L K))) (= P (and O N)) (not P) (= N (<= L M)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@._crit_edge C D E F B G H I J A K)
        (= B true)
      )
      (main@_43 C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@._crit_edge A B C D E F G H I J K)
        (not E)
      )
      (main@_47 A B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_43 H A I B C D E F G)
        (and (= J true) (= J (not (<= H I))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@_43 B C D E F G H I J)
        (and (not A) (= A (not (<= B D))))
      )
      (main@_45 B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_45 A C F G H I J K L)
        (and (= E C) (= B (+ (- 1) A)) (= D B))
      )
      (main@.outer D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) ) 
    (=>
      (and
        (main@_47 A J K I B C D E F G H)
        (and (= M (not (<= J K))) (= N (or M L)) (= N true) (= L (not (<= I J))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_47 D E F G H I J K L M N)
        (and (= C (or B A)) (= B (not (<= E F))) (not C) (= A (not (<= G E))))
      )
      (main@_50 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_50 C A E F G H I J K L M)
        (and (= B (+ (- 1) A)) (= D B))
      )
      (main@_19 C D E F G H I J K L M)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F G H I J)
        (= A true)
      )
      (main@empty.loop.body B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@empty.loop F G H I J K L B C)
        (and (= E C) (not A) (= D B))
      )
      (main@.outer D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E F G H I)
        true
      )
      (main@empty.loop A B C D E F G H I)
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
