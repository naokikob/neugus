(set-logic HORN)

(declare-fun |main@_107| ( Int ) Bool)
(declare-fun |main@_39| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_91| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NodeBlock51.i.backedge| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_43| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_24| ( Int ) Bool)
(declare-fun |main@NewDefault| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_30| ( Int ) Bool)
(declare-fun |main@NodeBlock.i| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_113| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_90| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@_32| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_99| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_47| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_80| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_109| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_66| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NodeBlock49.i| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_74| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_86| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NodeBlock51.i| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_119| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_20| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_115| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_53| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_95| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_78| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_36| ( Int ) Bool)
(declare-fun |main@_70| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_103| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_120| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_26| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_63| ( Int ) Bool)
(declare-fun |main@NodeBlock47.i| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_16| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_84| ( Int ) Bool)
(declare-fun |main@NodeBlock| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@LeafBlock45.i| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_57| ( Int ) Bool)
(declare-fun |main@_59| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_51| ( Int ) Bool)
(declare-fun |main@LeafBlock| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Bool) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) (D1 Int) (E1 Int) (F1 Int) (G1 Int) ) 
    (=>
      (and
        (main@entry Q)
        (and (= B (= F1 3))
     (= C (= E1 2))
     (= D (= D1 2))
     (= E (= C1 0))
     (= F (= B1 2))
     (= G (= A1 0))
     (= H (= Z 2))
     (= I (= Y 2))
     (= J (= X 0))
     (= K (= W 0))
     (= L (= V 0))
     (= M (= U 0))
     (= N (= T 0))
     (= O (= S 0))
     (= P (= R 0))
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
     (= O true)
     (= P true)
     (= A (= G1 0)))
      )
      (main@empty.loop Q R S T U V W X Y Z A1 B1 C1 D1 E1 F1 G1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@NodeBlock51.i B C D E F G H I J K L M N O P Q R S T)
        (and (= A true) (= A (not (<= 2 B))))
      )
      (main@NodeBlock.i B C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@NodeBlock51.i B C D E F G H I J K L M N O P Q R S T)
        (and (not A) (= A (not (<= 2 B))))
      )
      (main@NodeBlock49.i B C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@NodeBlock49.i A C D E F G H I J K L M N O P Q R S T)
        (and (= B true) (= B (= A 2)))
      )
      (main@_39 C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@NodeBlock49.i B C D E F G H I J K L M N O P Q R S T)
        (and (not A) (= A (= B 2)))
      )
      (main@NodeBlock47.i B C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@NodeBlock47.i A C D E F G H I J K L M N O P Q R S T)
        (and (= B true) (= B (not (<= 4 A))))
      )
      (main@_66 C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@NodeBlock47.i B C D E F G H I J K L M N O P Q R S T)
        (and (not A) (= A (not (<= 4 B))))
      )
      (main@LeafBlock45.i B C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@LeafBlock45.i A C D E F G H I J K L M N O P Q R S T)
        (and (= B true) (= B (= A 4)))
      )
      (main@_95 C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@LeafBlock45.i B C F G H I J K L M N O P Q R S T U V)
        (and (= D B) (= E C) (not A) (= A (= B 4)))
      )
      (main@NodeBlock51.i.backedge D E F G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@NewDefault A B E F G H I J K L M N O P Q R S T U)
        (and (= D B) (= C A))
      )
      (main@NodeBlock51.i.backedge C D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@NodeBlock51.i.backedge A B E F G H I J K L M N O P Q R S T U)
        (and (= D B) (= C A))
      )
      (main@NodeBlock51.i C D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@NodeBlock.i A B C D E F G H I J K L M N O P Q R S)
        true
      )
      (main@NodeBlock A B C D E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@NodeBlock B C D E F G H I J K L M N O P Q R S T)
        (and (= A true) (= A (not (<= 1 B))))
      )
      (main@LeafBlock B C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@NodeBlock A C D E F G H I J K L M N O P Q R S T)
        (and (not B) (= B (not (<= 1 A))))
      )
      (main@_20 C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@LeafBlock A C D E F G H I J K L M N O P Q R S T)
        (and (= B true) (= B (= A 0)))
      )
      (main@_16 C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@LeafBlock B C D E F G H I J K L M N O P Q R S T)
        (and (not A) (= A (= B 0)))
      )
      (main@NewDefault B C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) ) 
    (=>
      (and
        (main@_16 D I J K L M N O P Q R S T U V W X Y)
        (and (= A I) (= E (ite C 0 2)) (= F (ite C D 0)) (= G E) (= H F) (= C (= B 0)))
      )
      (main@NodeBlock51.i.backedge G H I J K L M N O P Q R S T U V W X Y)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_20 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B H)))
      )
      (main@_26 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) ) 
    (=>
      (and
        (main@_20 U Q A B S C D E F G H I J K L M N O)
        (and (= P Q) (not T) (= T (= R S)))
      )
      (main@_24 U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@_24 A)
        (and (= B true) (= B (= A 2)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_26 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B G)))
      )
      (main@_32 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) ) 
    (=>
      (and
        (main@_26 U Q A S B C D E F G H I J K L M N O)
        (and (= P Q) (not T) (= T (= R S)))
      )
      (main@_30 U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@_30 A)
        (and (= B true) (= B (= A 3)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@_32 D G H I J K L M N O P Q R S T U V W)
        (and (= A G) (= E 1) (= F D) (= C true) (= C (= B H)))
      )
      (main@NodeBlock51.i.backedge E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) ) 
    (=>
      (and
        (main@_32 U Q S A B C D E F G H I J K L M N O)
        (and (= P Q) (not T) (= T (= R S)))
      )
      (main@_36 U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_36 A)
        (and (or (not (= A 0)) (= B 1)) (= C true) (= C (= B 3)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_39 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_43 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@_39 A G H I J K L M N O P Q R S T U V W)
        (and (= B G) (= E 3) (= F 2) (not D) (= D (= C 0)))
      )
      (main@NodeBlock51.i.backedge E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_43 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_47 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@_43 A G H I J K L M N O P Q R S T U V W)
        (and (= B G) (= E 4) (= F 3) (not D) (= D (= C 0)))
      )
      (main@NodeBlock51.i.backedge E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_47 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B K)))
      )
      (main@_53 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) ) 
    (=>
      (and
        (main@_47 U Q A B C D E S F G H I J K L M N O)
        (and (= P Q) (not T) (= T (= R S)))
      )
      (main@_51 U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@_51 A)
        (and (= B true) (= B (= A 2)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_53 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B J)))
      )
      (main@_59 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) ) 
    (=>
      (and
        (main@_53 U Q A B C D S E F G H I J K L M N O)
        (and (= P Q) (not T) (= T (= R S)))
      )
      (main@_57 U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@_57 A)
        (and (= B true) (= B (= A 3)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@_59 D G H I J K L M N O P Q R S T U V W)
        (and (= A G) (= E 2) (= F D) (= C true) (= C (= B K)))
      )
      (main@NodeBlock51.i.backedge E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) ) 
    (=>
      (and
        (main@_59 U Q A B C S D E F G H I J K L M N O)
        (and (= P Q) (not T) (= T (= R S)))
      )
      (main@_63 U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@_63 A)
        (and (or (not (= A 0)) (= B 1)) (= C true) (= C (= B 3)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_66 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_70 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@_66 A G H I J K L M N O P Q R S T U V W)
        (and (= B G) (= E 3) (= F 2) (not D) (= D (= C 0)))
      )
      (main@NodeBlock51.i.backedge E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_70 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_74 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@_70 A G H I J K L M N O P Q R S T U V W)
        (and (= B G) (= E 4) (= F 3) (not D) (= D (= C 0)))
      )
      (main@NodeBlock51.i.backedge E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_74 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_80 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_74 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_78 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_78 A E F G H I J K L M N O P Q R S T U)
        (and (= C 3) (= D 2) (= B true) (= B (= A P)))
      )
      (main@NodeBlock51.i.backedge C D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) ) 
    (=>
      (and
        (main@_78 Q A B C D E F G H I J K R L M N O P)
        (and (not S) (= S (= Q R)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_80 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B O)))
      )
      (main@_86 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) ) 
    (=>
      (and
        (main@_80 U Q A B C D E F G H I S J K L M N O)
        (and (= P Q) (not T) (= T (= R S)))
      )
      (main@_84 U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@_84 A)
        (and (= B true) (= B (= A 3)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_86 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_91 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_86 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_90 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@_90 C F G H I J K L M N O P Q R S T U V)
        (let ((a!1 (ite (>= A 0)
                (or (not (<= O A)) (not (>= O 0)))
                (and (not (<= O A)) (not (<= 0 O))))))
  (and (= A (+ (- 2) C)) (= D 3) (= E C) (= B true) (= B a!1)))
      )
      (main@NodeBlock51.i.backedge D E F G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) ) 
    (=>
      (and
        (main@_90 Q A B C D E F G H I S J K L M N O P)
        (let ((a!1 (ite (>= R 0)
                (or (not (<= S R)) (not (>= S 0)))
                (and (not (<= S R)) (not (<= 0 S))))))
  (and (= R (+ (- 2) Q)) (not T) (= T a!1)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) ) 
    (=>
      (and
        (main@_91 G J K L M N O P Q R S T U V W X Y Z)
        (let ((a!1 (ite (>= C 0)
                (or (not (<= R C)) (not (>= R 0)))
                (and (not (<= R C)) (not (<= 0 R))))))
  (and (= E (= B Q))
       (= F (or E D))
       (= A J)
       (= C (+ (- 2) G))
       (= H 3)
       (= I G)
       (= F true)
       (= D a!1)))
      )
      (main@NodeBlock51.i.backedge H I J K L M N O P Q R S T U V W X Y Z)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Bool) (X Bool) ) 
    (=>
      (and
        (main@_91 S P A B C D E F R U G H I J K L M N)
        (let ((a!1 (ite (>= T 0)
                (or (not (<= U T)) (not (>= U 0)))
                (and (not (<= U T)) (not (<= 0 U))))))
  (and (= W (= Q R)) (= X (or W V)) (= O P) (= T (+ (- 2) S)) (not X) (= V a!1)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_95 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_99 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@_95 A G H I J K L M N O P Q R S T U V W)
        (and (= B G) (= E 3) (= F 2) (not D) (= D (= C 0)))
      )
      (main@NodeBlock51.i.backedge E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_99 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_103 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@_99 A G H I J K L M N O P Q R S T U V W)
        (and (= B G) (= E 4) (= F 3) (not D) (= D (= C 0)))
      )
      (main@NodeBlock51.i.backedge E F G H I J K L M N O P Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_103 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B U)))
      )
      (main@_109 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) ) 
    (=>
      (and
        (main@_103 U Q A B C D E F G H I J K L M N O S)
        (and (= P Q) (not T) (= T (= R S)))
      )
      (main@_107 U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@_107 A)
        (and (= B true) (= B (= A 2)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_109 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_115 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_109 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_113 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_113 A E F G H I J K L M N O P Q R S T U)
        (and (= C 4) (= D 3) (= B true) (= B (= A T)))
      )
      (main@NodeBlock51.i.backedge C D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Bool) ) 
    (=>
      (and
        (main@_113 Q A B C D E F G H I J K L M N O R P)
        (and (not S) (= S (= Q R)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_115 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_120 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_115 D E F G H I J K L M N O P Q R S T U)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_119 D E F G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) ) 
    (=>
      (and
        (main@_119 C F G H I J K L M N O P Q R S T U V)
        (let ((a!1 (ite (>= A 0)
                (or (not (<= T A)) (not (>= T 0)))
                (and (not (<= T A)) (not (<= 0 T))))))
  (and (= A (+ (- 2) C)) (= D 4) (= E C) (= B true) (= B a!1)))
      )
      (main@NodeBlock51.i.backedge D E F G H I J K L M N O P Q R S T U V)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) ) 
    (=>
      (and
        (main@_119 Q A B C D E F G H I J K L M N S O P)
        (let ((a!1 (ite (>= R 0)
                (or (not (<= S R)) (not (>= S 0)))
                (and (not (<= S R)) (not (<= 0 S))))))
  (and (= R (+ (- 2) Q)) (not T) (= T a!1)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) ) 
    (=>
      (and
        (main@_120 G J K L M N O P Q R S T U V W X Y Z)
        (let ((a!1 (ite (>= C 0)
                (or (not (<= W C)) (not (>= W 0)))
                (and (not (<= W C)) (not (<= 0 W))))))
  (and (= E (= B V))
       (= F (or E D))
       (= A J)
       (= C (+ (- 2) G))
       (= H 4)
       (= I G)
       (= F true)
       (= D a!1)))
      )
      (main@NodeBlock51.i.backedge H I J K L M N O P Q R S T U V W X Y Z)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Bool) (W Bool) (X Bool) ) 
    (=>
      (and
        (main@_120 S P A B C D E F G H I J K R U L M N)
        (let ((a!1 (ite (>= T 0)
                (or (not (<= U T)) (not (>= U 0)))
                (and (not (<= U T)) (not (<= 0 U))))))
  (and (= W (= Q R)) (= X (or W V)) (= O P) (= T (+ (- 2) S)) (not X) (= V a!1)))
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F G H I J K L M N O P Q R)
        (= A true)
      )
      (main@empty.loop.body B C D E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@empty.loop D E F G H I J K L M N O P Q R S T)
        (and (= C 0) (not A) (= B 0))
      )
      (main@NodeBlock51.i B C D E F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E F G H I J K L M N O P Q)
        true
      )
      (main@empty.loop A B C D E F G H I J K L M N O P Q)
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
