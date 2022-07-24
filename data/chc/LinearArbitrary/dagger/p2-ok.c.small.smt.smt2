(set-logic HORN)

(declare-fun |main@_113| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_125| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.backedge| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_154| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_119| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_128| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_91| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.outer._crit_edge| ( Int ) Bool)
(declare-fun |main@_97| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_51| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@_107| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_135| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_174| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_95| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_168| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_109| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_170| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph33| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.preheader| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph61| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_145| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_161| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_31| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph22| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_147| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.outer.backedge| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph28.preheader| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_111| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph28| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_121| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_19| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_151| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_158| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_99| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_102| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_71| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge29| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_104| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_138| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_24| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@._crit_edge23| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_156| ( Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph63| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_93| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph22.preheader| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph66| ( Int Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_133| ( Int Int Int Int Int Int Int Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Bool) (I Int) (J Bool) (K Int) (L Bool) (M Int) (N Bool) (O Int) (P Bool) (Q Int) (R Bool) (S Bool) (T Int) (U Int) (V Int) (W Bool) (X Int) (Y Int) (Z Int) (A1 Bool) (B1 Int) ) 
    (=>
      (and
        (main@entry Y)
        (and (= D (= C (- 1)))
     (= F (= E (- 1)))
     (= H (= G 61))
     (= J (= I 61))
     (= L (= K (- 1)))
     (= N (= M (- 1)))
     (= P (= O 100))
     (= R (= Q (- 1)))
     (= W (= V 0))
     (= A1 (= Z (- 1)))
     (= T Y)
     (= U Y)
     (= X Y)
     (= B1 0)
     (= B true)
     (= D true)
     (= F true)
     (= H true)
     (= J true)
     (= L true)
     (= N true)
     (= P true)
     (= R true)
     (not S)
     (= W true)
     (= A1 true)
     (= B (= A (- 1))))
      )
      (main@.outer._crit_edge B1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Bool) (I Bool) (J Bool) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Bool) (Q Int) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) ) 
    (=>
      (and
        (main@entry R)
        (and (= B (= B1 (- 1)))
     (= D (= Z 61))
     (= F (= S (- 1)))
     (= H (= W 100))
     (= N (= M 0))
     (= P (= Q (- 1)))
     (= C (= A1 (- 1)))
     (= E (= Y 61))
     (= G (= X (- 1)))
     (= I (= U (- 1)))
     (= K R)
     (= O R)
     (= T 0)
     (= L R)
     (= V Q)
     (= A true)
     (= B true)
     (= D true)
     (= F true)
     (= H true)
     (not J)
     (= N true)
     (not P)
     (= C true)
     (= E true)
     (= G true)
     (= I true)
     (= A (= C1 (- 1))))
      )
      (main@.lr.ph33 R S T U V W X Y Z A1 B1 C1)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph33 B C D F A G H I J K L M)
        (= E A)
      )
      (main@_19 B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_19 D E F G H I J K L M N O)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_31 D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_19 D E F G H I J K L M N O)
        (and (= A D) (not C) (= C (= B 0)))
      )
      (main@_24 D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_24 D E F G H I J K L M N O)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_31 D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_24 E F G A H I J K L M N O)
        (and (= B E) (not D) (= D (= C 0)))
      )
      (main@.backedge E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) ) 
    (=>
      (and
        (main@.backedge J L N A B C D E F G H)
        (and (= I J) (= O N) (= M true) (= M (= K L)))
      )
      (main@.outer._crit_edge O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@.backedge D E F H I J K L M N O)
        (and (= A D) (= G C) (not B) (= B (= C E)))
      )
      (main@_19 D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_31 G H I J K L M O P Q R S)
        (and (= A G) (= C G) (= N F) (= B G) (= E true) (= E (= D 0)))
      )
      (main@._crit_edge G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@_31 F G H I J K L M N O P Q)
        (and (= B F) (= A F) (= C F) (not E) (= E (= D 0)))
      )
      (main@.lr.ph.preheader F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader E F G H I J K L M N O P A)
        (and (= B E) (= D true) (= D (= C 0)))
      )
      (main@.lr.ph61 E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader E F G H I J K M N O P Q D)
        (and (= A E) (= L D) (not C) (= C (= B 0)))
      )
      (main@._crit_edge E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph61 F G H I J K L N O P Q R)
        (and (= B F) (= M E) (= A F) (= D true) (= D (= C 0)))
      )
      (main@._crit_edge F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph61 E F G H I J K L M N O P)
        (and (= A E) (= B E) (not D) (= D (= C 0)))
      )
      (main@.lr.ph E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.lr.ph E F G H I J K L M N O P A)
        (and (= B E) (= D true) (= D (= C 0)))
      )
      (main@.lr.ph61 E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph E F G H I J K M N O P Q D)
        (and (= A E) (= L D) (not C) (= C (= B 0)))
      )
      (main@._crit_edge E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) ) 
    (=>
      (and
        (main@._crit_edge A B N C D E F K G H I J L)
        (and (= O N) (= M true) (= M (= K L)))
      )
      (main@.outer._crit_edge O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@._crit_edge B C D E F G H I J K L M N)
        (and (not A) (= A (= I N)))
      )
      (main@_51 B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@_51 G H I J K M N O P Q R S T)
        (and (= B G) (= A G) (= C G) (= L F) (= E true) (= E (= D 0)))
      )
      (main@._crit_edge23 G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_51 F G H I J K L M N O P Q S)
        (and (= A F) (= C F) (= B F) (not E) (= E (= D 0)))
      )
      (main@.lr.ph22.preheader F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph22.preheader E F G H I J K L M N O P A Q)
        (and (= B E) (= D true) (= D (= C 0)))
      )
      (main@.lr.ph63 E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph22.preheader E F G H I K L M N O P Q D R)
        (and (= A E) (= J D) (not C) (= C (= B 0)))
      )
      (main@._crit_edge23 E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph63 F G H I J L M N O P Q R S)
        (and (= A F) (= B F) (= K E) (= D true) (= D (= C 0)))
      )
      (main@._crit_edge23 F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph63 E F G H I J K L M N O P R)
        (and (= B E) (= A E) (not D) (= D (= C 0)))
      )
      (main@.lr.ph22 E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.lr.ph22 E F G H I J K L M N O P A Q)
        (and (= B E) (= D true) (= D (= C 0)))
      )
      (main@.lr.ph63 E F G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph22 E F G H I K L M N O P Q D R)
        (and (= A E) (= J D) (not C) (= C (= B 0)))
      )
      (main@._crit_edge23 E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Int) (P Int) ) 
    (=>
      (and
        (main@._crit_edge23 A B O C D L E F G H I J M K)
        (and (= P O) (= N true) (= N (= L M)))
      )
      (main@.outer._crit_edge P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@._crit_edge23 B C D E F G H I J K L M N O)
        (and (not A) (= A (= G N)))
      )
      (main@_71 B C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_71 G H I J K M N O P Q R S T U)
        (and (= A G) (= C G) (= L F) (= B G) (= E true) (= E (= D 0)))
      )
      (main@._crit_edge29 G H I J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@_71 F G H I J K L M N O P Q S T)
        (and (= B F) (= A F) (= C F) (not E) (= E (= D 0)))
      )
      (main@.lr.ph28.preheader F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph28.preheader E F G H I J K L M N O P A Q R)
        (and (= B E) (= D true) (= D (= C 0)))
      )
      (main@.lr.ph66 E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph28.preheader E F G H I K L M N O P Q D R S)
        (and (= A E) (= J D) (not C) (= C (= B 0)))
      )
      (main@._crit_edge29 E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@.lr.ph66 F G H I J L M N O P Q R S T)
        (and (= B F) (= K E) (= A F) (= D true) (= D (= C 0)))
      )
      (main@._crit_edge29 F G H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph66 E F G H I J K L M N O P R S)
        (and (= A E) (= B E) (not D) (= D (= C 0)))
      )
      (main@.lr.ph28 E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@.lr.ph28 E F G H I J K L M N O P A Q R)
        (and (= B E) (= D true) (= D (= C 0)))
      )
      (main@.lr.ph66 E F G H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph28 E F G H I K L M N O P Q D R S)
        (and (= A E) (= J D) (not C) (= C (= B 0)))
      )
      (main@._crit_edge29 E F G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Bool) (P Int) (Q Int) ) 
    (=>
      (and
        (main@._crit_edge29 A B P C D M E F G H I J N K L)
        (and (= Q P) (= O true) (= O (= M N)))
      )
      (main@.outer._crit_edge Q)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@._crit_edge29 B C D E F G H I J K L M N O P)
        (and (not A) (= A (= G N)))
      )
      (main@_91 B C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_91 B C D E F G H I J K L M N O P)
        (and (= A true) (= A (not (<= E 60))))
      )
      (main@_93 B C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_91 B C D E F G H I J K L M N O P)
        (and (not A) (= A (not (<= E 60))))
      )
      (main@_95 B C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_93 F G H D I A B J K C L M N O P)
        (and (= E true) (= E (= D L)))
      )
      (main@.backedge F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_93 B C D E F G H I J K L M N O P)
        (and (not A) (= A (= E L)))
      )
      (main@_97 B C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_95 F G H A I B C J K D L M N O P)
        (and (= E true) (= E (= D M)))
      )
      (main@.backedge F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_95 B C D E F G H I J K L M N O P)
        (and (not A) (= A (= K M)))
      )
      (main@_97 B C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_97 C D E A F G H I J K L M N O P)
        (let ((a!1 (= B (or (not (<= A 127)) (not (>= A 0))))))
  (and (= B true) a!1))
      )
      (main@_102 C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_97 C D E A F G H I J K L M N O P)
        (let ((a!1 (= B (or (not (<= A 127)) (not (>= A 0))))))
  (and (not B) a!1))
      )
      (main@_99 C D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_99 B C D E F G H I J K L M N O)
        (= A B)
      )
      (main@_102 B C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_102 C D E F G H I J A K L M N O)
        (let ((a!1 (= B (or (not (<= A 127)) (not (>= A 0))))))
  (and (= B true) a!1))
      )
      (main@_107 C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_102 C D E F G H I J A K L M N O)
        (let ((a!1 (= B (or (not (<= A 127)) (not (>= A 0))))))
  (and (not B) a!1))
      )
      (main@_104 C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_104 B C D E F G H I J K L M N)
        (= A B)
      )
      (main@_107 B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_107 B C D E F G H I J K L M N)
        (and (= A true) (= A (not (<= D 99))))
      )
      (main@_109 B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_107 B C D E F G H I J K L M N)
        (and (not A) (= A (not (<= D 99))))
      )
      (main@_111 B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_109 C D A E F G I J K L M N O)
        (and (= H 0) (= B true) (= B (= A I)))
      )
      (main@_113 C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (main@_109 A B L C D E M F G H I J K)
        (and (not N) (= N (= L M)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_111 C D B E F G I J K L M N O)
        (and (= H B) (= A true) (= A (not (<= B J))))
      )
      (main@_113 C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Bool) ) 
    (=>
      (and
        (main@_111 A B L C D E F M G H I J K)
        (and (not N) (= N (not (<= L M))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_113 G H I J K L M N O P Q R S)
        (and (= F (or E D))
     (= E (not (= C 0)))
     (= A (+ 1 L))
     (= B G)
     (= F true)
     (= D (not (<= L 98))))
      )
      (main@_119 G H I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@_113 H I J K M C N O P Q R S T)
        (and (= D (not (<= C 98)))
     (= F (or D E))
     (= A H)
     (= G (+ 1 C))
     (= L G)
     (not F)
     (= E (not (= B 0))))
      )
      (main@_128 H I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_119 C D E F H A I J K L M N O)
        (and (= G 0) (= B true) (= B (= A 0)))
      )
      (main@_128 C D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_119 C D E F G A H I J K L M N)
        (and (not B) (= B (= A 0)))
      )
      (main@_121 C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_121 D E F G H I J K L M N O)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_125 D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@_121 D E F G I J K L M N O P)
        (and (= A D) (= H 0) (not C) (= C (= B 0)))
      )
      (main@_128 D E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_125 B C D E G H I J K L M N)
        (and (= F 0) (= A B))
      )
      (main@_128 B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_128 E F G A D B I J K L M N O)
        (and (= H D) (= C true) (= C (= B 61)))
      )
      (main@.outer.backedge E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_128 B C D E F G H I J K L M N)
        (and (not A) (= A (= G 61)))
      )
      (main@_133 B C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) ) 
    (=>
      (and
        (main@.outer.backedge J A L N B C D E F G H)
        (and (= I J) (= O N) (= M true) (= M (= K L)))
      )
      (main@.outer._crit_edge O)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@.outer.backedge E F H D J K L M N O P)
        (and (= G D) (= A E) (= I C) (not B) (= B (= C H)))
      )
      (main@.lr.ph33 E F G H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_133 C D E F G A H I J K L M N)
        (let ((a!1 (= B (or (not (<= A 127)) (not (>= A 0))))))
  (and (= B true) a!1))
      )
      (main@_138 C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_133 C D E F G A H I J K L M N)
        (let ((a!1 (= B (or (not (<= A 127)) (not (>= A 0))))))
  (and (not B) a!1))
      )
      (main@_135 C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_135 B C D E F G H I J K L M)
        (= A B)
      )
      (main@_138 B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@_138 I J K L B N O P Q R S T)
        (and (= G (not (= E 0)))
     (= F (not (<= M 98)))
     (= H (or F G))
     (= D I)
     (= C (+ 1 M))
     (= M (ite A 0 B))
     (= H true)
     (= A (not (<= B 99))))
      )
      (main@_145 I J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) (U Int) ) 
    (=>
      (and
        (main@_138 J K L N B O P Q R S T U)
        (and (= H (or G F))
     (= A (not (<= B 99)))
     (= G (not (= D 0)))
     (= C J)
     (= E (ite A 0 B))
     (= I (+ 1 E))
     (= M I)
     (not H)
     (= F (not (<= E 98))))
      )
      (main@_154 J K L M N O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_145 C D E G A H I J K L M N)
        (and (= F 0) (= B true) (= B (= A 0)))
      )
      (main@_154 C D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_145 C D E F A G H I J K L M)
        (and (not B) (= B (= A 0)))
      )
      (main@_147 C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_147 D E F G H I J K L M N)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_151 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@_147 D E F H I J K L M N O)
        (and (= A D) (= G 0) (not C) (= C (= B 0)))
      )
      (main@_154 D E F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_151 B C D F G H I J K L M)
        (and (= E 0) (= A B))
      )
      (main@_154 B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_154 D E F C A H I J K L M N)
        (and (= G C) (= B true) (= B (= A 61)))
      )
      (main@.outer.backedge D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_154 B C D E F G H I J K L M)
        (and (not A) (= A (= F 61)))
      )
      (main@_156 B C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_156 C D E F A G H I J K L M)
        (let ((a!1 (= B (or (not (<= A 127)) (not (>= A 0))))))
  (and (= B true) a!1))
      )
      (main@_161 C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_156 C D E F A G H I J K L M)
        (let ((a!1 (= B (or (not (<= A 127)) (not (>= A 0))))))
  (and (not B) a!1))
      )
      (main@_158 C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_158 B C D E F G H I J K L)
        (= A B)
      )
      (main@_161 B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_161 I J K B M N O P Q R S)
        (and (= A (not (<= B 99)))
     (= G (not (= E 0)))
     (= H (or G F))
     (= C (+ 1 L))
     (= D I)
     (= L (ite A 0 B))
     (= H true)
     (= F (not (<= L 98))))
      )
      (main@_168 I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int) ) 
    (=>
      (and
        (main@_161 J K L B N O P Q R S T)
        (and (= G (not (= D 0)))
     (= F (not (<= E 98)))
     (= H (or F G))
     (= C J)
     (= E (ite A 0 B))
     (= I (+ 1 E))
     (= M I)
     (not H)
     (= A (not (<= B 99))))
      )
      (main@.outer.backedge J K L M N O P Q R S T)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_168 C D E A G H I J K L M)
        (and (= F 0) (= B true) (= B (= A 0)))
      )
      (main@.outer.backedge C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_168 C D E A F G H I J K L)
        (and (not B) (= B (= A 0)))
      )
      (main@_170 C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_170 D E F G H I J K L M)
        (and (= A D) (= C true) (= C (= B 0)))
      )
      (main@_174 D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_170 D E F H I J K L M N)
        (and (= A D) (= G 0) (not C) (= C (= B 0)))
      )
      (main@.outer.backedge D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@_174 B C D F G H I J K L)
        (and (= E 0) (= A B))
      )
      (main@.outer.backedge B C D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) ) 
    (=>
      (and
        (main@.outer._crit_edge A)
        (and (not B) (= B (not (<= 101 A))))
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
