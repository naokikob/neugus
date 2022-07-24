(set-logic HORN)

(declare-fun |main@.lr.ph.preheader| ( Int Int ) Bool)
(declare-fun |main@assert.split| ( ) Bool)
(declare-fun |main@postcall| ( Int Bool Int Int ) Bool)
(declare-fun |main@assert| ( Bool ) Bool)
(declare-fun |main@postcall1| ( Int Int Int Bool Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@.preheader| ( Int Int ) Bool)
(declare-fun |main@.lr.ph9.preheader| ( Int ) Bool)
(declare-fun |main@orig.main.exit| ( Int Int ) Bool)
(declare-fun |main@.lr.ph9| ( Int Int Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (= E 0) (= F 0) (= D true) (= D (not (<= 1 C))))
      )
      (main@orig.main.exit E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) ) 
    (=>
      (and
        (main@entry B)
        (and (= A B) (not C) (= C (not (<= 1 D))))
      )
      (main@.lr.ph9.preheader D)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph9.preheader E)
        (and (= D 1) (= A true) (= C true) (= B 2))
      )
      (main@postcall B C D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Bool) ) 
    (=>
      (and
        (main@.lr.ph9.preheader A)
        (and (= C true) (not B))
      )
      (main@assert C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (main@.preheader B C)
        (and (= A true) (= A (not (<= C 0))))
      )
      (main@.lr.ph.preheader B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader C A)
        (and (= D C) (= E 0) (not B) (= B (not (<= A 0))))
      )
      (main@orig.main.exit D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Bool) (F Int) ) 
    (=>
      (and
        (main@.lr.ph.preheader B F)
        (and (= C 2) (= A true) (= E true) (= D 1))
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
  (forall ( (A Int) (B Int) (C Bool) (D Bool) (E Int) (F Int) (G Int) (H Bool) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph9 A F J)
        (and (= H D)
     (= B (* 2 F))
     (= E (+ 2 A))
     (= G E)
     (= I F)
     (= C true)
     (= D (= E B)))
      )
      (main@postcall G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Bool) (H Bool) ) 
    (=>
      (and
        (main@.lr.ph9 B C A)
        (and (= H G) (= D (+ 2 B)) (= E (* 2 C)) (not F) (= G (= D E)))
      )
      (main@assert H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@postcall E A C G)
        (and (= D (not (<= G C))) (= F (+ 1 C)) (not B) (= D true) (= B (not A)))
      )
      (main@.lr.ph9 E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@postcall F A D G)
        (and (= E (not (<= G D))) (= C (+ 1 D)) (not B) (not E) (= B (not A)))
      )
      (main@.preheader F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) ) 
    (=>
      (and
        (main@.lr.ph H A B L)
        (and (= K E)
     (= F (+ 1 B))
     (= C (* 2 F))
     (= J F)
     (= G (+ 2 A))
     (= I G)
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
        (and (= J I) (= E (+ 1 D)) (= F (+ 2 C)) (= G (* 2 E)) (not H) (= I (= F G)))
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
        (and (= C (not (<= G F))) (not B) (= C true) (= B (not A)))
      )
      (main@.lr.ph D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@postcall1 F G C A D)
        (and (= E (not (<= D C))) (= H F) (= I G) (not B) (not E) (= B (not A)))
      )
      (main@orig.main.exit H I)
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
