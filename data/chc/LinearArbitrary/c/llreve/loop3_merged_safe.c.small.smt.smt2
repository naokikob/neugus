(set-logic HORN)

(declare-fun |main@.lr.ph.preheader| ( Int Int ) Bool)
(declare-fun |main@_5| ( Int Int Int Bool ) Bool)
(declare-fun |main@assert.split| ( ) Bool)
(declare-fun |main@.preheader| ( Int Int Bool ) Bool)
(declare-fun |main@assert| ( Bool ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@postcall1| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@postcall| ( Int Bool Int Int Bool ) Bool)

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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Int) (H Int) (I Bool) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B)
     (= E 2)
     (= G 1)
     (= H (ite I C 1))
     (= D true)
     (= F true)
     (= I (not (<= C 1))))
      )
      (main@postcall E F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Bool) (G Bool) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= C (ite D E 1)) (not F) (= G true) (= D (not (<= E 1))))
      )
      (main@assert G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@.preheader B C A)
        (= A true)
      )
      (main@.lr.ph.preheader B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) ) 
    (=>
      (and
        (main@.preheader C A B)
        (and (not B) (= D 2))
      )
      (main@orig.main.exit C D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader B F)
        (and (= D 2) (= E true) (= A true) (= C 4))
      )
      (main@postcall1 B C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) ) 
    (=>
      (and
        (main@.lr.ph.preheader A B)
        (and (= D true) (not C))
      )
      (main@assert D)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) (K Bool) ) 
    (=>
      (and
        (main@_5 A F J K)
        (and (= H D)
     (= B (* 2 F))
     (= E (+ 2 A))
     (= G E)
     (= I F)
     (= C true)
     (= D (= E B)))
      )
      (main@postcall G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) ) 
    (=>
      (and
        (main@_5 C D A B)
        (and (= I H) (= F (* 2 D)) (= E (+ 2 C)) (not G) (= H (= E F)))
      )
      (main@assert I)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@postcall E A C G H)
        (and (= D (not (<= G C))) (= F (+ 1 C)) (not B) (= D true) (= B (not A)))
      )
      (main@_5 E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@postcall F A D G H)
        (and (= E (not (<= G D))) (= C (+ 1 D)) (not B) (not E) (= B (not A)))
      )
      (main@.preheader F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@.lr.ph H A B L)
        (and (= K E)
     (= C (* 2 F))
     (= I G)
     (= G (+ 2 A))
     (= F (+ 1 B))
     (= J F)
     (= D true)
     (= E (= G C)))
      )
      (main@postcall1 H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) ) 
    (=>
      (and
        (main@.lr.ph A C D B)
        (and (= J I) (= G (* 2 E)) (= E (+ 1 D)) (= F (+ 2 C)) (not H) (= I (= F G)))
      )
      (main@assert J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@postcall1 D E F A G)
        (and (= B (not A)) (= C true) (not B) (= C (not (<= G F))))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@postcall1 G F C A D)
        (and (= E (not (<= D C))) (= H F) (not B) (not E) (= B (not A)))
      )
      (main@orig.main.exit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Bool) ) 
    (=>
      (and
        (main@orig.main.exit A B)
        (and (= E D) (not C) (= D (= A B)))
      )
      (main@assert E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) ) 
    (=>
      (and
        (main@assert A)
        (and (= B true) (= B (not A)))
      )
      main@assert.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@assert.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
