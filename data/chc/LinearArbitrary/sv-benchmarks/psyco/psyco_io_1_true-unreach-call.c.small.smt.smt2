(set-logic HORN)

(declare-fun |main@.us_lcssa32.us| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_94| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_145| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_83| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NodeBlock79.i.us.us53| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NodeBlock79.i.us37| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_104| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@LeafBlock82.i.us.peel| ( Int Int Int Int Bool Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_102| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NodeBlock79.i.us33| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)
(declare-fun |main@_98| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_136| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_120| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@LeafBlock| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@LeafBlock84.i| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_117| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop.body| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NodeBlock79.i.outer| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_124| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NodeBlock79.i.outer.split.us.split.split| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_90| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_128| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NodeBlock79.i.outer.split| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NodeBlock79.i.us.preheader| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_113| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_86| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@NewDefault| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_138| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_108| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_147| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_142| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_151| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_132| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_79| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_68| ( Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_111| ( Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@empty.loop| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@_70| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@LeafBlock82.i.us| ( Int Int Int Int Bool Int Int Int Int Int ) Bool)
(declare-fun |main@_74| ( Int Int Int Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_77| ( Int Int Int Int Int Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Bool) (D Bool) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@entry H)
        (and (= B (= O 0))
     (= C (= N 0))
     (= D (= M 0))
     (= E (= L 0))
     (= F (= J 0))
     (= G (= I 0))
     (= A true)
     (= B true)
     (= C true)
     (= D true)
     (= E true)
     (= F true)
     (= G true)
     (= A (= K 0)))
      )
      (main@empty.loop H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.outer B C D E F G H I J K)
        (and (= A true) (= A (not (<= 2 C))))
      )
      (main@NodeBlock79.i.outer.split.us.split.split B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.outer B C D E F G H I J K)
        (and (not A) (= A (not (<= 2 C))))
      )
      (main@NodeBlock79.i.outer.split B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.outer.split.us.split.split C A D E F G H I J K)
        (and (= B true) (= B (= A 1)))
      )
      (main@NodeBlock79.i.us.us53 C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.outer.split.us.split.split B C D E F G H I J K)
        (and (not A) (= A (= C 1)))
      )
      (main@NodeBlock79.i.us.preheader B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.us.preheader G A H I J K L M N O)
        (and (= B H) (= C H) (= D H) (= E H) (= F true) (= F (= A K)))
      )
      (main@.us_lcssa32.us G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Int) (L Int) (M Int) (N Int) (O Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.us.preheader F A G H I K L M N O)
        (and (= B G) (= C G) (= D G) (= E G) (not J) (= J (= A K)))
      )
      (main@LeafBlock82.i.us.peel F G H I J K L M N O)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@LeafBlock82.i.us.peel E F G H I J K L M N)
        (and (= B F) (= C F) (= D F) (= A F))
      )
      (main@LeafBlock82.i.us E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.us.us53 H K L M N O P Q R)
        (and (= A K) (= B K) (= C K) (= D K) (= E K) (= G true) (= G (= F 0)))
      )
      (main@_70 H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.us.us53 H I J K L M N O P)
        (and (= A I) (= B I) (= C I) (= D I) (= E I) (not G) (= G (= F 0)))
      )
      (main@_68 H I J K L M N O P)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@LeafBlock82.i.us F G H I E J K L M N)
        (and (= B G) (= C G) (= D G) (= E true) (= A G))
      )
      (main@.us_lcssa32.us F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@LeafBlock82.i.us E F G H I J K L M N)
        (and (= B F) (= C F) (= D F) (not I) (= A F))
      )
      (main@LeafBlock82.i.us E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.outer.split A B C D E F G H I J)
        true
      )
      (main@LeafBlock A B C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@LeafBlock C A D E F G H I J K)
        (and (= B true) (= B (= A 3)))
      )
      (main@NodeBlock79.i.us37 C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@LeafBlock C A D E F G H I J K)
        (and (not B) (= B (= A 3)))
      )
      (main@NewDefault C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@NewDefault A B C D E F G H I)
        true
      )
      (main@NodeBlock79.i.us33 A B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.us33 H I J K L M N Q R)
        (and (= A I) (= B I) (= C I) (= D I) (= E I) (= G true) (= G (= F 0)))
      )
      (main@_86 H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.us33 H L M N O P Q R S)
        (and (= A L)
     (= B L)
     (= C L)
     (= D L)
     (= E L)
     (= I 2)
     (= J H)
     (= K 2)
     (not G)
     (= G (= F 0)))
      )
      (main@LeafBlock84.i I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.us37 H I J K L O P Q R)
        (and (= A I) (= B I) (= C I) (= D I) (= E I) (= G true) (= G (= F 0)))
      )
      (main@_120 H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@NodeBlock79.i.us37 H L M N O P Q R S)
        (and (= A L)
     (= B L)
     (= C L)
     (= D L)
     (= E L)
     (= I 2)
     (= J H)
     (= K 3)
     (not G)
     (= G (= F 0)))
      )
      (main@LeafBlock84.i I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@.us_lcssa32.us C J K L M N O P Q)
        (and (= A J)
     (= E (ite D C 0))
     (= F (ite D 0 2))
     (= G 2)
     (= H E)
     (= I F)
     (= D (= B 0)))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_68 A F G H I J K L M)
        (and (= C 3) (= D 0) (= E 1) (= B true) (= B (= A H)))
      )
      (main@LeafBlock84.i C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_68 H A B I C D E F G)
        (and (not J) (= J (= H I)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_70 D E F G H I J K L M N)
        (and (= A G) (= C true) (= C (= B 0)))
      )
      (main@_79 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_70 D E F G H I J K L M N)
        (and (= A G) (not C) (= C (= B 0)))
      )
      (main@_74 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_74 F A B G H I J K L M N)
        (and (= D (not (= A 1))) (= E (and D C)) (= E true) (= C (not (= B 0))))
      )
      (main@_77 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_74 F A B J K L M N O P Q)
        (and (= D (not (= A 1)))
     (= E (and D C))
     (= G 2)
     (= H F)
     (= I 1)
     (not E)
     (= C (not (= B 0))))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_77 H A I B C D E F G)
        (and (= J true) (= J (= H I)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_77 B F G H I J K L M)
        (and (= C 3) (= D B) (= E 1) (not A) (= A (= B G)))
      )
      (main@LeafBlock84.i C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_79 F A B J K L M N O P Q)
        (and (= C J) (= G 2) (= H F) (= I 1) (= E true) (= E (= D 0)))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_79 D E F G H I J K L M N)
        (and (= A G) (not C) (= C (= B 0)))
      )
      (main@_83 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@_83 G A B K L M N O P Q R)
        (and (= D (not (= A 1)))
     (= E (and D C))
     (= F (ite E 2 3))
     (= H F)
     (= I G)
     (= J 1)
     (= C (not (= B 0))))
      )
      (main@LeafBlock84.i H I J K L M N O P Q R)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_86 D E F G H I J K L M N)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_90 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_86 F J K L M N O A B P Q)
        (and (= C J) (= G 2) (= H F) (= I 2) (not E) (= E (= D 0)))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_90 D E F G H I J K L M N)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_94 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_90 F J K L M N O A B P Q)
        (and (= C J) (= G 2) (= H F) (= I 2) (not E) (= E (= D 0)))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_94 D E F G H I J K L M N)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_98 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_94 F J K L M N O A B P Q)
        (and (= C J) (= G 2) (= H F) (= I 2) (not E) (= E (= D 0)))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_98 D E F G H I J K L M N)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_104 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_98 F G H I J K L A B M N)
        (and (= C G) (not E) (= E (= D 0)))
      )
      (main@_102 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_102 A F G H I J K L M)
        (and (= C 3) (= D 0) (= E 1) (= B true) (= B (= A M)))
      )
      (main@LeafBlock84.i C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_102 H A B C D E F G I)
        (and (not J) (= J (= H I)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_104 D E F G H I J K L M N)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_113 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_104 D E F G H I J K L M N)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_108 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_108 E F G H I J K A L M N)
        (and (= C (not (= A 1))) (= D (and C B)) (= D true) (= B (not (= L 0))))
      )
      (main@_111 E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_108 F J K L M N O A B P Q)
        (and (= D (not (= A 1)))
     (= E (and D C))
     (= G 2)
     (= H F)
     (= I 2)
     (not E)
     (= C (not (= B 0))))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_111 A G H I J K L C M N)
        (and (= D 2) (= E C) (= F 3) (= B true) (= B (= A M)))
      )
      (main@LeafBlock84.i D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (main@_111 I A B C D E F G J H)
        (and (not K) (= K (= I J)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_113 F J K L M N O A B P Q)
        (and (= C J) (= G 2) (= H F) (= I 2) (= E true) (= E (= D 0)))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_113 D E F G H I J K L M N)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_117 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_117 G L M N O P Q A B R S)
        (and (= D (not (= A 1)))
     (= E (and D C))
     (= F (ite E 2 3))
     (= H (ite E 2 1))
     (= I F)
     (= J G)
     (= K H)
     (= C (not (= B 0))))
      )
      (main@LeafBlock84.i I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_120 D E F G H I J K L M N)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_124 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_120 F J K L M A B N O P Q)
        (and (= C J) (= G 2) (= H F) (= I 3) (not E) (= E (= D 0)))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_124 D E F G H I J K L M N)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_128 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_124 F J K L M A B N O P Q)
        (and (= C J) (= G 2) (= H F) (= I 3) (not E) (= E (= D 0)))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_128 D E F G H I J K L M N)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_132 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_128 F J K L M A B N O P Q)
        (and (= C J) (= G 2) (= H F) (= I 3) (not E) (= E (= D 0)))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_132 D E F G H I J K L M N)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_138 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_132 F G H I J A B K L M N)
        (and (= C G) (not E) (= E (= D 0)))
      )
      (main@_136 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_136 H A B C D E I F G)
        (and (= J true) (= J (= H I)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_136 B F G H I J K L M)
        (and (= C 2) (= D B) (= E 3) (not A) (= A (= B K)))
      )
      (main@LeafBlock84.i C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_138 D E F G H I J K L M N)
        (and (= A E) (= C true) (= C (= B 0)))
      )
      (main@_147 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_138 D E F G H I J K L M N)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_142 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_142 F G H I J A B K L M N)
        (and (= D (not (= A 1))) (= E (and D C)) (= E true) (= C (not (= B 0))))
      )
      (main@_145 F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_142 F J K L M A B N O P Q)
        (and (= D (not (= A 1)))
     (= E (and D C))
     (= G 2)
     (= H F)
     (= I 3)
     (not E)
     (= C (not (= B 0))))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) ) 
    (=>
      (and
        (main@_145 H A B C D I E F G)
        (and (= J true) (= J (= H I)))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@_145 B F G H I J K L M)
        (and (= C 3) (= D B) (= E 1) (not A) (= A (= B J)))
      )
      (main@LeafBlock84.i C D E F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) ) 
    (=>
      (and
        (main@_147 F J K L M A B N O P Q)
        (and (= C J) (= G 2) (= H F) (= I 3) (= E true) (= E (= D 0)))
      )
      (main@LeafBlock84.i G H I J K L M N O P Q)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@_147 D E F G H I J K L M N)
        (and (= A E) (not C) (= C (= B 0)))
      )
      (main@_151 D E F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@_151 G L M N O A B P Q R S)
        (and (= D (not (= A 1)))
     (= E (and D C))
     (= F (ite E 2 3))
     (= H (ite E 3 1))
     (= I F)
     (= J G)
     (= K H)
     (= C (not (= B 0))))
      )
      (main@LeafBlock84.i I J K L M N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@LeafBlock84.i A C D G H I J K L M N)
        (and (= E C) (= F D) (= B true) (= B (= A 2)))
      )
      (main@NodeBlock79.i.outer E F G H I J K L M N)
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
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@empty.loop B C D E F G H I)
        (= A true)
      )
      (main@empty.loop.body B C D E F G H I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@empty.loop D E F G H I J K)
        (and (= C 0) (not A) (= B 0))
      )
      (main@NodeBlock79.i.outer B C D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@empty.loop.body A B C D E F G H)
        true
      )
      (main@empty.loop A B C D E F G H)
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
