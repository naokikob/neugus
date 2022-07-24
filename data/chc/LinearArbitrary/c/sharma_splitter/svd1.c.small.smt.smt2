(set-logic HORN)

(declare-fun |main@._crit_edge48| ( Int Int Int ) Bool)
(declare-fun |main@_40| ( Int Int Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@.lr.ph44| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_27| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@.loopexit21| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph37.split.split.preheader.preheader| ( Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader17.lr.ph| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader20| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.preheader22| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph37.split| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph47| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_61| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph83| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph86| ( Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Bool Bool Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph44.split| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph81| ( Int Int Int Int Int Int Int Int Int Bool Bool Int Int Int Int Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.lr.ph89| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.loopexit| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph37.split.split.preheader| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int ) Bool)
(declare-fun |main@.lr.ph37.split.split| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph39| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Bool Bool Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph39.split.split| ( Int Int Int Int Int Int Int Int Int Int Int Bool Int Int Int Bool Bool Bool Int Int Int Int Int Int ) Bool)
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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Int) (J1 Int) (K1 Int) (L1 Int) (M1 Int) (N1 Int) ) 
    (=>
      (and
        (main@entry N1)
        (and (= B (= D1 (- 1)))
     (= C (= I1 1))
     (= D (= H1 1))
     (= E (= J1 1))
     (= F (= G1 0))
     (= G (= F1 0))
     (= H (= E1 0))
     (= I (= B1 0))
     (= J (= M1 0))
     (= K (= K1 1))
     (= L (= C1 1))
     (= M (= A1 1))
     (= N (= Y 1))
     (= T (not (<= V 0)))
     (= U (not (<= W 0)))
     (= O N1)
     (= P N1)
     (= Q N1)
     (= R N1)
     (= S N1)
     (= X W)
     (= Z V)
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
     (= N true)
     (= T true)
     (= U true)
     (= A (= L1 0)))
      )
      (main@.lr.ph47 W X Y Z A1 B1 C1 D1 E1 F1 G1 H1 I1 J1 K1 L1 M1 N1)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Bool) (O Int) (P Bool) (Q Int) (R Bool) (S Int) (T Bool) (U Int) (V Bool) (W Int) (X Bool) (Y Int) (Z Bool) (A1 Int) (B1 Bool) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) (H1 Int) (I1 Bool) (J1 Bool) (K1 Int) (L1 Int) (M1 Int) (N1 Int) ) 
    (=>
      (and
        (main@entry H1)
        (and (= R (= Q 0))
     (= V (= U 1))
     (= X (= W 1))
     (= Z (= Y 1))
     (= B1 (= A1 1))
     (= I1 (not (<= K1 0)))
     (= J1 (not (<= M1 0)))
     (= B (= A 0))
     (= D (= C (- 1)))
     (= F (= E 1))
     (= H (= G 1))
     (= J (= I 1))
     (= L (= K 0))
     (= N (= M 0))
     (= T (= S 0))
     (= C1 H1)
     (= D1 H1)
     (= E1 H1)
     (= F1 H1)
     (= G1 H1)
     (= L1 M1)
     (= N1 K1)
     (= P true)
     (= R true)
     (= V true)
     (= X true)
     (= Z true)
     (= B1 true)
     (= I1 true)
     (not J1)
     (= B true)
     (= D true)
     (= F true)
     (= H true)
     (= J true)
     (= L true)
     (= N true)
     (= T true)
     (= P (= O 0)))
      )
      (main@._crit_edge48 L1 M1 N1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph47 B C D E F G H I J K L M N O P Q R S)
        (and (= A true) (= A (not (<= B C))))
      )
      (main@_27 B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph47 C D E A F G H I J K L M N O P Q R S)
        (and (not B) (= B (not (<= C D))))
      )
      (main@.loopexit C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_27 D E F G H I J K L M N O P Q R S T U)
        (and (= A U) (= C true) (= C (= B 0)))
      )
      (main@.loopexit21 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_27 D E F G H I J K L M N O P Q R S T U)
        (and (= A U) (not C) (= C (= B 0)))
      )
      (main@.preheader22 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.preheader22 B C D E F G H I J K L M N O P Q R S)
        (and (= A true) (= A (not (<= E B))))
      )
      (main@.loopexit21 B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.preheader22 A B C D E F G H I J K L M N O Q R S)
        (and (not P) (= P (not (<= D A))))
      )
      (main@.lr.ph A B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Int) (W Int) (X Int) ) 
    (=>
      (and
        (main@.lr.ph C D E F G H I K N O P Q R S T U V W X)
        (and (= M (not (<= F V)))
     (= B (and L A))
     (= L (<= D C))
     (= J F)
     (= B true)
     (= A (not (<= F W))))
      )
      (main@.lr.ph81 C D E F G H I J K L M N O P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Bool) (V Bool) (W Bool) ) 
    (=>
      (and
        (main@.lr.ph P O A S B C D E F G H I J K L M R T N)
        (and (= U (<= O P))
     (= V (not (<= S T)))
     (= W (and V U))
     (not W)
     (= Q (not (<= S R))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph81 B C D E F G H I J K L M N O P Q R S T U V W)
        (and (= A true) (= A (not (<= B I))))
      )
      (main@_40 B C D E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph81 E F G H I J K C L A B M N O P Q R S T U V W)
        (and (not D) (= D (not (<= E C))))
      )
      (main@.preheader20 E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.preheader20 B C D E F G H I J K L M N O P A Q R S)
        (= A true)
      )
      (main@.loopexit21 B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.preheader20 B C D E F G H I J K L M N O P A Q R S)
        (not A)
      )
      (main@.preheader17.lr.ph B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Bool) ) 
    (=>
      (and
        (main@.preheader17.lr.ph Q P A R B C D E F G H I J K S L M N)
        (and (= O (not (<= P Q))) (= T true) (= T (not (<= S R))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.preheader17.lr.ph B C D E F G H I J K L M O P Q R S T)
        (and (= A (not (<= Q E))) (not A) (= N (not (<= C B))))
      )
      (main@.lr.ph37.split.split.preheader.preheader
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@.lr.ph37.split.split.preheader.preheader
  A
  B
  C
  D
  E
  F
  G
  H
  I
  J
  L
  M
  O
  Q
  R
  S
  T
  U
  V)
        (and (= P (not (<= Q D))) (= K D) (= N (not (<= R D))))
      )
      (main@.lr.ph37.split.split.preheader
  A
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
  T
  U
  V)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) ) 
    (=>
      (and
        (main@_40 F G H I J K L A N O P Q R S T U V W X Y Z A1)
        (and (= D (and C P))
     (= C (and O B))
     (= E (+ 1 A))
     (= M E)
     (= D true)
     (= B (not (<= A N))))
      )
      (main@.lr.ph81 F G H I J K L M N O P Q R S T U V W X Y Z A1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Bool) (X Bool) (Y Bool) (Z Bool) ) 
    (=>
      (and
        (main@_40 A B C D E F G T U V X H I J K L M N O P Q R)
        (and (= Z (and Y X)) (= W (not (<= T U))) (= S (+ 1 T)) (not Z) (= Y (and W V)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Bool) ) 
    (=>
      (and
        (main@.lr.ph37.split A B C D E F G H I J V W K L M N O P Q R S T)
        (and (= U (+ 1 V)) (= X true) (= X (not (<= W V))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@.lr.ph37.split D E F G H I J K L M A O P Q R S T U V W X Y)
        (and (= C (+ 1 A)) (= N C) (not B) (= B (not (<= O A))))
      )
      (main@.lr.ph37.split.split.preheader
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
  T
  U
  V
  W
  X
  Y)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) ) 
    (=>
      (and
        (main@.lr.ph37.split.split.preheader
  A
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
  V
  P
  Q
  R
  S
  T
  U)
        (= V true)
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@.lr.ph37.split.split.preheader
  A
  B
  C
  D
  E
  F
  G
  H
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
  T
  U
  V
  W)
        (and (not Q) (= I D))
      )
      (main@.lr.ph83 A B C D E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) ) 
    (=>
      (and
        (main@.lr.ph83 B C D E F G H I J K L M N O P Q R S T U V W X)
        (and (= A true) (= A (not (<= B J))))
      )
      (main@.lr.ph37.split.split B C D E F G H I J K L M N O P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Bool) (R Bool) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) ) 
    (=>
      (and
        (main@.lr.ph83 C D E F G H I J A K L M N O P Q R S T U V W X)
        (and (not B) (= B (not (<= C A))))
      )
      (main@.lr.ph39 C D E F G H I J K L M N O P Q R S T U V W X)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Bool) (V Bool) (W Bool) (X Bool) (Y Bool) ) 
    (=>
      (and
        (main@.lr.ph39 A B C D E F G H I J S K T V W L M N O P Q R)
        (and (= Y (or X W)) (= U (not (<= T S))) (= Y true) (= X (or V U)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Bool) (S Bool) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) ) 
    (=>
      (and
        (main@.lr.ph39 C D E F G H I J K M O P Q R S T U V W X Y Z)
        (and (= B (or S A)) (= N (not (<= Q O))) (= L F) (not B) (= A (or N R)))
      )
      (main@.lr.ph86 C D E F G H I J K L M N O P Q R S T U V W X Y Z)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) ) 
    (=>
      (and
        (main@.lr.ph37.split.split A B C D E F G H W X I J K L M N O P Q R S T U)
        (and (= V (+ 1 W)) (= Y true) (= Y (not (<= X W))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Bool) (T Bool) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) ) 
    (=>
      (and
        (main@.lr.ph37.split.split D E F G H I J K A M N O P Q R S T U V W X Y Z)
        (and (= C (+ 1 A)) (= L C) (not B) (= B (not (<= M A))))
      )
      (main@.lr.ph83 D E F G H I J K L M N O P Q R S T U V W X Y Z)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@.lr.ph86 B C D E F G H I J K L M N O P Q R S T U V W X Y)
        (and (= A true) (= A (not (<= B K))))
      )
      (main@.lr.ph39.split.split B C D E F G H I J K L M N O P Q R S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@.lr.ph86 D E F G H I J K L B M A N O P Q R S T U V W X Y)
        (and (not C) (= C (not (<= D B))))
      )
      (main@._crit_edge D E F G H I J K L M N O P Q R S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Bool) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Bool) (Z Bool) (A1 Bool) ) 
    (=>
      (and
        (main@.lr.ph39.split.split A B C D E F G H I W X Y J K L M N O P Q R S T U)
        (and (= A1 (or Z Y)) (= V (+ 1 W)) (= A1 true) (= Z (not (<= X W))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Bool) (U Bool) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) ) 
    (=>
      (and
        (main@.lr.ph39.split.split E F G H I J K L M A O P Q R S T U V W X Y Z A1 B1)
        (and (= B (not (<= O A))) (= D (+ 1 A)) (= N D) (not C) (= C (or B P)))
      )
      (main@.lr.ph86 E F G H I J K L M N O P Q R S T U V W X Y Z A1 B1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Bool) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@._crit_edge B C D E F G H I J K L M N O P Q R S T U V W)
        (and (= A true) (= A (not (<= B L))))
      )
      (main@.lr.ph37.split B C D E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@._crit_edge F G H I J K L M N O D P Q A B C R S T U V W)
        (and (not E) (= E (not (<= F D))))
      )
      (main@.loopexit21 F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.loopexit21 C D E A F G H I J K L M N O P Q R S)
        (and (= B true) (= B (not (<= A C))))
      )
      (main@.loopexit C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.loopexit21 B C D E F G H I J K L M N O P Q R S)
        (and (not A) (= A (not (<= E B))))
      )
      (main@.lr.ph44 B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Bool) (U Bool) ) 
    (=>
      (and
        (main@.lr.ph44 P O A Q B C R D E F G H I J K L M N)
        (and (= T (not (<= R Q))) (= U (or T S)) (= U true) (= S (not (<= O P))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@.lr.ph44 E F G D H J K L M N O P Q R S T U V)
        (and (= B (not (<= K D))) (= C (or B A)) (= I D) (not C) (= A (not (<= F E))))
      )
      (main@.lr.ph89 E F G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph89 B C D E F G H I J K L M N O P Q R S)
        (and (= A true) (= A (not (<= B F))))
      )
      (main@.lr.ph44.split B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph89 C D E F A G H I J K L M N O P Q R S)
        (and (not B) (= B (not (<= C A))))
      )
      (main@.loopexit C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) ) 
    (=>
      (and
        (main@.lr.ph44.split A B C D R S E F G H I J K L M N O P)
        (and (= Q (+ 1 R)) (= T true) (= T (not (<= S R))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@.lr.ph44.split D E F G A I J K L M N O P Q R S T U)
        (and (= C (+ 1 A)) (= H C) (not B) (= B (not (<= I A))))
      )
      (main@.lr.ph89 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Bool) (S Bool) (T Bool) ) 
    (=>
      (and
        (main@.loopexit Q P A O B C D E F G H I J K L M N)
        (and (= S (not (<= P Q))) (= T (or S R)) (= T true) (= R (not (<= O P))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.loopexit D E F G H I J K L M N O P Q R S T)
        (and (= A (not (<= G E))) (= C (or A B)) (not C) (= B (not (<= E D))))
      )
      (main@_61 D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_61 D B F H I J K L M N O P Q R S T U)
        (and (= C (+ (- 1) B)) (= E C) (= G B) (= A true) (= A (not (<= B F))))
      )
      (main@.lr.ph47 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_61 T O P A B C D E F G H I J K L M N)
        (and (= R (+ (- 1) O)) (= S R) (= U 1) (not Q) (= Q (not (<= O P))))
      )
      (main@._crit_edge48 S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@._crit_edge48 B A C)
        (and (= F (= C D)) (= G (or F E)) (= D (+ 1 B)) (not G) (= E (= B A)))
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
