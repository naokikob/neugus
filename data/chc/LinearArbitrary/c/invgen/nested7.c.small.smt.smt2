(set-logic HORN)

(declare-fun |main@..loopexit_crit_edge.us| ( Int Int Bool Int Int Int Int Int ) Bool)
(declare-fun |main@_25| ( Int Int Int Int ) Bool)
(declare-fun |main@.preheader7| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@.preheader3.preheader| ( Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph14.us| ( Int Int Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@_28| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@_31| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@._crit_edge| ( Int Int Bool Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.lr.ph17.split.us| ( Int Int Bool Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int Int ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry M)
        (and (= H (not (<= K 0)))
     (= A M)
     (= B M)
     (= C M)
     (= D M)
     (= E M)
     (= F M)
     (= I (+ L K))
     (not G)
     (= H true)
     (= G (not (<= N I))))
      )
      (main@.preheader7 I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Int) (K Bool) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@entry G)
        (and (= K (not (<= J 0)))
     (= A G)
     (= B G)
     (= C G)
     (= D G)
     (= E G)
     (= F G)
     (= M L)
     (= N (+ H J))
     (not I)
     (not K)
     (= I (not (<= L N))))
      )
      (main@verifier.error M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader7 B C E F H A)
        (and (= G 0) (= D true) (= D (not (<= C 0))))
      )
      (main@.lr.ph17.split.us B C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader7 C D G H A B)
        (and (= F B) (not E) (= E (not (<= D 0))))
      )
      (main@._crit_edge C D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph17.split.us D E F G H I K)
        (and (= A K) (= J H) (= C true) (= C (= B 0)))
      )
      (main@..loopexit_crit_edge.us D E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph17.split.us D E F G H I L)
        (and (= A L) (= J H) (= K 0) (not C) (= C (= B 0)))
      )
      (main@.lr.ph14.us D E F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph14.us F G H I J K A B N)
        (and (= D (+ 1 A))
     (= E (+ 1 B))
     (= L D)
     (= M E)
     (= C true)
     (= C (not (<= I E))))
      )
      (main@.lr.ph14.us F G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) (L Int) (M Int) ) 
    (=>
      (and
        (main@.lr.ph14.us F G H I J K A B M)
        (and (= C (+ 1 B)) (= E (+ 1 A)) (= L E) (not D) (= D (not (<= I C))))
      )
      (main@..loopexit_crit_edge.us F G H I J K L M)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@..loopexit_crit_edge.us E F G H I B A K)
        (and (= D (+ 1 B)) (= J D) (= C true) (= C (not (<= F D))))
      )
      (main@.lr.ph17.split.us E F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@..loopexit_crit_edge.us F G H J K B E A)
        (and (= C (+ 1 B)) (= I E) (not D) (= D (not (<= G C))))
      )
      (main@._crit_edge F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@._crit_edge D E F G A B)
        (and (= C true) (= C (not (<= B 5))))
      )
      (main@.preheader3.preheader D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@._crit_edge D A B E F G)
        (and (not C) (= C (not (<= G 5))))
      )
      (main@_31 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader3.preheader C E B A)
        (and (= B true) (= D 0))
      )
      (main@.preheader C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader3.preheader E A B C)
        (and (not B) (= D C))
      )
      (main@verifier.error D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) ) 
    (=>
      (and
        (main@.preheader A B C)
        (= D 0)
      )
      (main@_25 A B C D)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_25 D E F A)
        (and (= C (+ 1 A)) (= G C) (= B true) (= B (not (<= D A))))
      )
      (main@_25 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@_25 C D E F)
        (and (= A (+ 1 F)) (not B) (= B (not (<= C F))))
      )
      (main@_28 C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_28 E B G A)
        (and (= D (+ 1 B)) (= F D) (= C true) (= C (not (<= G D))))
      )
      (main@.preheader E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_28 G A C E)
        (and (= B (+ 1 A)) (= F E) (not D) (= D (not (<= C B))))
      )
      (main@verifier.error F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_31 D C G A)
        (and (= E C) (= F 0) (= B true) (= B (not (<= A G))))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@_31 F D B A)
        (and (= E D) (not C) (= C (not (<= A B))))
      )
      (main@verifier.error E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F A B I)
        (and (= D (+ (- 1) A))
     (= E (+ 1 B))
     (= G D)
     (= H E)
     (= C true)
     (= C (not (<= I E))))
      )
      (main@.lr.ph F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph H A B D)
        (and (= C (+ 1 B)) (= F (+ (- 1) A)) (= G F) (not E) (= E (not (<= D C))))
      )
      (main@verifier.error G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@verifier.error A B)
        (and (= C true) (= C (not (<= A B))))
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
