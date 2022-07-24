(set-logic HORN)

(declare-fun |main@empty.loop| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int Bool Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit21| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_20| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.preheader22| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@_33| ( Int Int Int Int Int Bool Int Int Int Bool Bool Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int Int ) Bool)
(declare-fun |main@.lr.ph73| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph79| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph27.split.split| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph34.split| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph29.split.split| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph34| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph71| ( Int Int Int Int Int Bool Int Int Int Bool Bool Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@_17| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader20| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph27.split.split.preheader| ( Int Int Int Int Int Bool Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph27.split| ( Int Int Int Int Int Bool Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph27.split.split.preheader.preheader| ( Int Int Int Int Int Bool Int Int Int Int Int Int Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph75| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph29| ( Int Int Int Int Int Bool Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader17.lr.ph| ( Int Int Int Int Int Bool Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)

(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        true
      )
      (main@entry A B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) ) 
    (=>
      (and
        (main@entry Q C1)
        (and (= B (= D1 0))
     (= C (= T (- 1)))
     (= D (= X 1))
     (= E (= Y 1))
     (= F (= W 0))
     (= G (= V 0))
     (= H (= U 0))
     (= I (= R (- 1)))
     (= J (= B1 0))
     (= K (= Z 1))
     (= L (= S 0))
     (= M (= P 1))
     (= O (= E1 0))
     (= N C1)
     (= A true)
     (= B true)
     (= C true)
     (= D true)
     (= E true)
     (= F true)
     (= G true)
     (= H true)
     (= I true)
     (= J true)
     (= K true)
     (= L true)
     (= M true)
     (not O)
     (= A (= A1 0)))
      )
      (main@empty.loop P Q R S T U V W X Y Z A1 B1 C1 D1 E1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_17 B C D E F H I J K L M N O P Q R S)
        (and (= G (not (<= B S))) (= A true) (= G true) (= A (not (<= D B))))
      )
      (main@_20 B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_17 D E F A G H I J K L M N O P Q R S)
        (and (= B (not (<= D S))) (not C) (= B true) (= C (not (<= F D))))
      )
      (main@.loopexit D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_20 D E F G H I J K L M N O P Q R S T U)
        (and (= A T) (= C true) (= C (= B 0)))
      )
      (main@.loopexit21 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_20 D E F G H I J K L M N O P Q R S T U)
        (and (= A T) (not C) (= C (= B 0)))
      )
      (main@.preheader22 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.preheader22 B C D E F G H I J K L M N O P Q R S)
        (and (= A true) (= A (not (<= E D))))
      )
      (main@.loopexit21 B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.preheader22 A B C D E F G H I J K L M N P Q R S)
        (and (not O) (= O (not (<= D C))))
      )
      (main@.lr.ph A B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@.lr.ph D E F G H I J L O P Q R S T U V W X Y)
        (and (= A (not (<= G W)))
     (= B (and I A))
     (= C (and M B))
     (= M (<= D F))
     (= K G)
     (= C true)
     (= N (not (<= G V))))
      )
      (main@.lr.ph71 D E F G H I J K L M N O P Q R S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) (W Bool) (X Bool) ) 
    (=>
      (and
        (main@.lr.ph N A O R B T C D E F G H I J K Q S L M)
        (and (= U (not (<= R S)))
     (= V (<= N O))
     (= W (and T U))
     (= X (and W V))
     (not X)
     (= P (not (<= R Q))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph71 B C D E F G H I J K L M N O P Q R S T U V W)
        (and (= A true) (= A (not (<= D I))))
      )
      (main@_33 B C D E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph71 E F G H I J K C L A B M N O P Q R S T U V W)
        (and (not D) (= D (not (<= G C))))
      )
      (main@.preheader20 E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.preheader20 B C D E F G H I J K L M N O A P Q R S)
        (= A true)
      )
      (main@.loopexit21 B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.preheader20 B C D E F G H I J K L M N O A P Q R S)
        (not A)
      )
      (main@.preheader17.lr.ph B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Bool) ) 
    (=>
      (and
        (main@.preheader17.lr.ph P A Q R B C D E F G H I J S K L M N)
        (and (= T (not (<= S R))) (= T true) (= O (not (<= P Q))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.preheader17.lr.ph B C D E F G H I J K L M O P Q R S T)
        (and (= A (not (<= P E))) (not A) (= N (not (<= B D))))
      )
      (main@.lr.ph27.split.split.preheader.preheader
  B
  C
  D
  E
  F
  G
  H
  I
  J
  K
  L
  M
  N
  O
  P
  Q
  R
  S
  T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@.lr.ph27.split.split.preheader.preheader
  E
  F
  G
  H
  I
  J
  K
  L
  M
  N
  P
  S
  A
  T
  U
  V
  W
  X
  Y)
        (and (= Q (or D C))
     (= B (not J))
     (= C (or B A))
     (= D (not (<= T H)))
     (= O H)
     (= R (not (<= S H))))
      )
      (main@.lr.ph27.split.split.preheader E F G H I J K L M N O P Q R S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) ) 
    (=>
      (and
        (main@_33 G H I J K L M A O P Q R S T U V W X Y Z A1 B1)
        (and (= C (and L B))
     (= D (and P C))
     (= E (and D Q))
     (= F (+ 1 A))
     (= N F)
     (= E true)
     (= B (not (<= A O))))
      )
      (main@.lr.ph71 G H I J K L M N O P Q R S T U V W X Y Z A1 B1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) (A1 Bool) ) 
    (=>
      (and
        (main@_33 A B C D E U F S T W Y G H I J K L M N O P Q)
        (and (= X (and V U))
     (= Z (and W X))
     (= A1 (and Z Y))
     (= R (+ 1 S))
     (not A1)
     (= V (not (<= S T))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Bool) ) 
    (=>
      (and
        (main@.lr.ph27.split A B C D E F G H I J U V K L M N O P Q R S)
        (and (= T (+ 1 U)) (= W true) (= W (not (<= V U))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) ) 
    (=>
      (and
        (main@.lr.ph27.split D E F G H I J K L M A O P Q R S T U V W X)
        (and (= C (+ 1 A)) (= N C) (not B) (= B (not (<= O A))))
      )
      (main@.lr.ph27.split.split.preheader D E F G H I J K L M N O P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) ) 
    (=>
      (and
        (main@.lr.ph27.split.split.preheader A B C D E F G H I J K L M U N O P Q R S T)
        (= U true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@.lr.ph27.split.split.preheader A B C D E F G H J K L M N O P Q R S T U V)
        (and (not O) (= I D))
      )
      (main@.lr.ph73 A B C D E F G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph73 B C D E F G H I J K L M N O P Q R S T U V W)
        (and (= A true) (= A (not (<= D J))))
      )
      (main@.lr.ph27.split.split B C D E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph73 C D E F G H I J A K L M N O P Q R S T U V W)
        (and (not B) (= B (not (<= E A))))
      )
      (main@.lr.ph29 C D E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) ) 
    (=>
      (and
        (main@.lr.ph29 A B C D E F G H I J K L U M N O P Q R S T)
        (= U true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@.lr.ph29 A B C D E F G H I K L M N O P Q R S T U V)
        (and (not N) (= J D))
      )
      (main@.lr.ph75 A B C D E F G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) ) 
    (=>
      (and
        (main@.lr.ph27.split.split A B C D E F G H V W I J K L M N O P Q R S T)
        (and (= U (+ 1 V)) (= X true) (= X (not (<= W V))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@.lr.ph27.split.split D E F G H I J K A M N O P Q R S T U V W X Y)
        (and (= C (+ 1 A)) (= L C) (not B) (= B (not (<= M A))))
      )
      (main@.lr.ph73 D E F G H I J K L M N O P Q R S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph75 B C D E F G H I J K L M N O P Q R S T U V W)
        (and (= A true) (= A (not (<= D K))))
      )
      (main@.lr.ph29.split.split B C D E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph75 C D E F G H I J K A L M N O P Q R S T U V W)
        (and (not B) (= B (not (<= E A))))
      )
      (main@._crit_edge C D E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) ) 
    (=>
      (and
        (main@.lr.ph29.split.split A B C D E F G H I V W J K L M N O P Q R S T)
        (and (= U (+ 1 V)) (= X true) (= X (not (<= W V))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@.lr.ph29.split.split D E F G H I J K L A N O P Q R S T U V W X Y)
        (and (= C (+ 1 A)) (= M C) (not B) (= B (not (<= N A))))
      )
      (main@.lr.ph75 D E F G H I J K L M N O P Q R S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@._crit_edge B C D E F G H I J K L M N O P Q R S T U V)
        (and (= A true) (= A (not (<= D L))))
      )
      (main@.lr.ph27.split B C D E F G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@._crit_edge E F G H I J K L M N C O A B P Q R S T U V)
        (and (not D) (= D (not (<= G C))))
      )
      (main@.loopexit21 E F G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.loopexit21 D E F B G A H I J K L M N O P Q R S)
        (and (= C true) (= C (not (<= B F))))
      )
      (main@.loopexit D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.loopexit21 B C D E F G H I J K L M N O P Q R S)
        (and (not A) (= A (not (<= E D))))
      )
      (main@.lr.ph34 B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph34 F G H E J K L M N O P Q R S T U V W)
        (and (= B (<= F H))
     (= C (and K A))
     (= D (and C B))
     (= I E)
     (= D true)
     (= A (not (<= E L))))
      )
      (main@.lr.ph79 F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Bool) (T Bool) (U Bool) (V Bool) ) 
    (=>
      (and
        (main@.lr.ph34 N A O P B R Q C D E F G H I J K L M)
        (and (= T (<= N O))
     (= U (and R S))
     (= V (and U T))
     (not V)
     (= S (not (<= P Q))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph79 B C D E F G H I J K L M N O P Q R S)
        (and (= A true) (= A (not (<= D E))))
      )
      (main@.lr.ph34.split B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph79 D E F B G A H I J K L M N O P Q R S)
        (and (not C) (= C (not (<= F B))))
      )
      (main@.loopexit D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@.lr.ph34.split E F G A I J K L M N O P Q R S T U V)
        (and (= C (and J B)) (= H D) (= D (+ 1 A)) (= C true) (= B (not (<= A I))))
      )
      (main@.lr.ph79 E F G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Bool) ) 
    (=>
      (and
        (main@.lr.ph34.split A B C Q R S D E F G H I J K L M N O)
        (and (= U (and T S)) (= P (+ 1 Q)) (not U) (= T (not (<= Q R))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Int) (S Int) (T Bool) ) 
    (=>
      (and
        (main@.loopexit S N O A B C D E F G H I J K L M)
        (and (= T (or P Q))
     (= P (not (<= N S)))
     (= R (+ (- 1) S))
     (= T true)
     (= Q (not (<= S O))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@.loopexit D G H J K L M N O P Q R S T U V)
        (and (= B (not (<= D H)))
     (= C (or B A))
     (= E (+ (- 1) D))
     (= I D)
     (= F E)
     (not C)
     (= A (not (<= G D))))
      )
      (main@_17 F G H I J K L M N O P Q R S T U V)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F G H I J K L M N O P Q)
        (= A true)
      )
      (main@empty.loop.body B C D E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@empty.loop D E G H I J K L M N O P Q R S B)
        (and (= C E) (not A) (= F B))
      )
      (main@_17 C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E F G H I J K L M N O P)
        true
      )
      (main@empty.loop A B C D E F G H I J K L M N O P)
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
