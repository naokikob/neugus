(set-logic HORN)

(declare-fun |main@.lr.ph27.split| ( Int Bool Int Int Int Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.split.preheader| ( Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph27.split.split| ( Int Bool Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@_21| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.split| ( Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@.lr.ph74| ( Int Int Bool Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph25.split.split| ( Int Bool Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph25.split.split.preheader.preheader| ( Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Bool Int Int Int Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph70| ( Int Bool Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph68| ( Int Bool Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@_25| ( Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Bool Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph25.split.split.preheader| ( Int Bool Int Int Int Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph25.split.preheader| ( Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph25.split| ( Int Bool Int Int Int Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph32.split| ( Int Int Bool Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph32.split.preheader| ( Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) ) 
    (=>
      (and
        (main@entry Y)
        (and (= B (= S (- 1)))
     (= C (= W 0))
     (= D (= V 0))
     (= E (= U 0))
     (= F (= T 0))
     (= G (= P (- 1)))
     (= H (= X 0))
     (= I (= Q 1))
     (= J Y)
     (= K Y)
     (= L Y)
     (= M Y)
     (= N Y)
     (= O Y)
     (= A true)
     (= B true)
     (= C true)
     (= D true)
     (= E true)
     (= F true)
     (= G true)
     (= H true)
     (= I true)
     (= A (= Z 0)))
      )
      (main@empty.loop P Q R S T U V W X Y Z)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_21 B D E F H I J K L M N O)
        (and (= C (not (<= D O)))
     (= G (+ 1 D))
     (= A true)
     (= C true)
     (= A (not (<= F D))))
      )
      (main@_25 B C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_21 D E F G H I J K L M N O)
        (and (= C (not (<= G E))) (= B (+ 1 E)) (= A true) (not C) (= A (not (<= E O))))
      )
      (main@.loopexit D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_25 D E F G H I J K L M N O P Q)
        (and (= A P) (= C true) (= C (= B 0)))
      )
      (main@.lr.ph32.split.preheader D E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_25 D E F G H I J K L M N O P Q)
        (and (= A P) (not C) (= C (= B 0)))
      )
      (main@.lr.ph.split.preheader D E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph.split.preheader A B C D E F H I J K L M N O)
        (and (= B true) (= G F))
      )
      (main@.lr.ph A B C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (main@.lr.ph.split.preheader A N B C D E F G H I J K L M)
        (not N)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph B C D E F G H I J K L M N O P)
        (and (= A true) (= A (not (<= F H))))
      )
      (main@.lr.ph.split B C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph C D E F G H A I J K L M N O P)
        (and (not B) (= B (not (<= G A))))
      )
      (main@.lr.ph25.split.preheader C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) ) 
    (=>
      (and
        (main@.lr.ph25.split.preheader A B M C D E F G H I J N K L)
        (and (= O true) (= O (not (<= N M))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph25.split.preheader B C D E F G H I J K L M N O)
        (and (not A) (= A (not (<= M D))))
      )
      (main@.lr.ph25.split.split.preheader.preheader B C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph25.split.split.preheader.preheader A B C D E F G H I K M N O P)
        (and (= J F) (= L (not (<= M C))))
      )
      (main@.lr.ph25.split.split.preheader A B C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph.split E F G H I J A L M N O P Q R S)
        (and (= B (not (<= A L))) (= D (+ 1 A)) (= K D) (= C true) (= C (and F B)))
      )
      (main@.lr.ph E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) ) 
    (=>
      (and
        (main@.lr.ph.split A P B C D E N O F G H I J K L)
        (and (= R (and Q P)) (= M (+ 1 N)) (not R) (= Q (not (<= N O))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) ) 
    (=>
      (and
        (main@.lr.ph25.split A B C D E F G H I P Q J K L M N)
        (and (= O (+ 1 P)) (= R true) (= R (not (<= Q P))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph25.split D E F G H I J K L A N O P Q R S)
        (and (= C (+ 1 A)) (= M C) (not B) (= B (not (<= N A))))
      )
      (main@.lr.ph25.split.split.preheader D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) ) 
    (=>
      (and
        (main@.lr.ph25.split.split.preheader A B C D E F G H I J K P L M N O)
        (= P true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph25.split.split.preheader A B C D E F G I J K L M N O P Q)
        (and (not M) (= H F))
      )
      (main@.lr.ph68 A B C D E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph68 B C D E F G H I J K L M N O P Q R)
        (and (= A true) (= A (not (<= F I))))
      )
      (main@.lr.ph25.split.split B C D E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph68 C D E F G H I A J K L M N O P Q R)
        (and (not B) (= B (not (<= G A))))
      )
      (main@.lr.ph27.split C D E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph27.split A B C D E F G H J K L M N O P Q)
        (and (= B true) (= I F))
      )
      (main@.lr.ph70 A B C D E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Bool) ) 
    (=>
      (and
        (main@.lr.ph27.split A P B C D E F G H I J K L M N O)
        (not P)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) ) 
    (=>
      (and
        (main@.lr.ph25.split.split A B C D E F G Q R H I J K L M N O)
        (and (= P (+ 1 Q)) (= S true) (= S (not (<= R Q))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.lr.ph25.split.split D E F G H I J A L M N O P Q R S T)
        (and (= C (+ 1 A)) (= K C) (not B) (= B (not (<= L A))))
      )
      (main@.lr.ph68 D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph70 B C D E F G H I J K L M N O P Q R)
        (and (= A true) (= A (not (<= F J))))
      )
      (main@.lr.ph27.split.split B C D E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph70 C D E F G H I J A K L M N O P Q R)
        (and (not B) (= B (not (<= G A))))
      )
      (main@._crit_edge C D E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) ) 
    (=>
      (and
        (main@.lr.ph27.split.split A B C D E F G H Q R I J K L M N O)
        (and (= P (+ 1 Q)) (= S true) (= S (not (<= R Q))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.lr.ph27.split.split D E F G H I J K A M N O P Q R S T)
        (and (= C (+ 1 A)) (= L C) (not B) (= B (not (<= M A))))
      )
      (main@.lr.ph70 D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@._crit_edge B C D E F G H I J K L M N O P Q)
        (and (= A true) (= A (not (<= F K))))
      )
      (main@.lr.ph25.split B C D E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@._crit_edge D E F G H I J K L B M A N O P Q)
        (and (not C) (= C (not (<= H B))))
      )
      (main@.lr.ph32.split.preheader D E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph32.split.preheader C D E F G A H I J K L M N O)
        (and (= D true) (= B A))
      )
      (main@.lr.ph74 B C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (main@.lr.ph32.split.preheader A N B C D E F G H I J K L M)
        (not N)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph74 B C D E F G H I J K L M N O)
        (and (= A true) (= A (not (<= G B))))
      )
      (main@.lr.ph32.split B C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.lr.ph74 B D A E F G H I J K L M N O)
        (and (not C) (= C (not (<= G B))))
      )
      (main@.loopexit D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph32.split A F G H I J K L M N O P Q R)
        (and (= C (and B G)) (= D (+ 1 A)) (= E D) (= C true) (= B (not (<= A F))))
      )
      (main@.lr.ph74 E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) ) 
    (=>
      (and
        (main@.lr.ph32.split M N O A B C D E F G H I J K)
        (and (= Q (and P O)) (= L (+ 1 M)) (not Q) (= P (not (<= M N))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Int) (P Bool) ) 
    (=>
      (and
        (main@.loopexit A O J K B C D E F G H I)
        (and (= L (not (<= J O)))
     (= P (or L M))
     (= N (+ (- 1) O))
     (= P true)
     (= M (not (<= O K))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.loopexit F C H I J K L M N O P Q)
        (and (= B (not (<= C I)))
     (= D (or B A))
     (= E (+ (- 1) C))
     (= G E)
     (not D)
     (= A (not (<= H C))))
      )
      (main@_21 F G H I J K L M N O P Q)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F G H I J K L)
        (= A true)
      )
      (main@empty.loop.body B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@empty.loop B D E F G H I J K L M)
        (and (not A) (= C E))
      )
      (main@_21 B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E F G H I J K)
        true
      )
      (main@empty.loop A B C D E F G H I J K)
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
