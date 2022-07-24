(set-logic HORN)

(declare-fun |main@postcall| ( Bool Int Int Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@precall| ( Bool ) Bool)
(declare-fun |main@precall.split| ( ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C)
     (= B C)
     (= G J)
     (= H 0)
     (= K J)
     (= L J)
     (= D true)
     (= E true)
     (not F)
     (= D (not (<= I 0))))
      )
      (main@postcall F G H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@entry C)
        (and (= A C) (= B C) (= E true) (not F) (not G) (= E (not (<= D 0))))
      )
      (main@precall G)
    )
  )
)
(assert
  (forall ( (A Bool) ) 
    (=>
      (and
        (main@precall A)
        (= A true)
      )
      main@precall.split
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Int) (S Int) (T Int) (U Int) (V Int) (W Int) ) 
    (=>
      (and
        (main@postcall A B E T U I J)
        (and (= F (not (<= T O)))
     (= L (not (= N M)))
     (= Q L)
     (= D (+ 5 B))
     (= G (* 5 O))
     (= H (+ G U))
     (= O (+ 1 E))
     (= P (ite C 10 D))
     (= M (+ J P))
     (= N (+ H I))
     (= R P)
     (= S O)
     (= V N)
     (= W M)
     (not A)
     (= F true)
     (= K true)
     (= C (= E 10)))
      )
      (main@postcall Q R S T U V W)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) ) 
    (=>
      (and
        (main@postcall A B E F J L M)
        (and (= G (not (<= F H)))
     (= R (not (= O P)))
     (= S R)
     (= D (+ 5 B))
     (= K (+ I J))
     (= H (+ 1 E))
     (= I (* 5 H))
     (= N (ite C 10 D))
     (= O (+ K L))
     (= P (+ M N))
     (not A)
     (= G true)
     (not Q)
     (= C (= E 10)))
      )
      (main@precall S)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@precall.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
