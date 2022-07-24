(set-logic HORN)

(declare-fun |g@UnifiedReturnBlock.split| ( Int Int ) Bool)
(declare-fun |main@.lr.ph.i| ( Int Int Int Int ) Bool)
(declare-fun |g@_br2| ( Int ) Bool)
(declare-fun |main@f.exit.split| ( ) Bool)
(declare-fun |g@_tail| ( Int ) Bool)
(declare-fun |g| ( Bool Bool Bool Int Int ) Bool)
(declare-fun |g@_4| ( Int ) Bool)
(declare-fun |main@f.exit| ( Int Int ) Bool)
(declare-fun |g@UnifiedReturnBlock| ( Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (g v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (g v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (g v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (g@_tail A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (g@_tail B)
        (and (= A true) (= A (not (<= B 0))))
      )
      (g@_4 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (g@_tail B)
        (and (not A) (= A (not (<= B 0))))
      )
      (g@_br2 B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (v_5 Bool) (v_6 Bool) (v_7 Bool) ) 
    (=>
      (and
        (g@_4 E)
        (g v_5 v_6 v_7 A B)
        (and (= v_5 true)
     (= v_6 false)
     (= v_7 false)
     (= C (+ B E))
     (= D C)
     (= A (+ (- 1) E)))
      )
      (g@UnifiedReturnBlock D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (g@_br2 B)
        (= A B)
      )
      (g@UnifiedReturnBlock A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (g@UnifiedReturnBlock A B)
        true
      )
      (g@UnifiedReturnBlock.split A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (g@UnifiedReturnBlock.split B A)
        (and (= v_2 true) (= v_3 false) (= v_4 false))
      )
      (g v_2 v_3 v_4 A B)
    )
  )
)
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
  (forall ( (A Bool) (B Int) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@entry C)
        (let ((a!1 (= D (and (not (<= 9 F)) (>= F 0)))))
  (and (= G 0)
       (= H F)
       (= A (= I 1))
       a!1
       (= E (not (<= F 0)))
       (= A true)
       (= D true)
       (= E true)
       (= B C)))
      )
      (main@.lr.ph.i F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Bool) (G Int) (H Int) ) 
    (=>
      (and
        (main@entry D)
        (let ((a!1 (= E (and (not (<= 9 G)) (>= G 0)))))
  (and (= H 0)
       (= B (= A 1))
       a!1
       (= F (not (<= G 0)))
       (= B true)
       (= E true)
       (not F)
       (= C D)))
      )
      (main@f.exit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.i F A B I)
        (and (= E (+ A B))
     (= G E)
     (= H D)
     (= C (not (<= B I)))
     (= C true)
     (= D (+ (- 1) B)))
      )
      (main@.lr.ph.i F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.lr.ph.i G A C D)
        (and (= F (+ A C)) (= H F) (= E (not (<= C D))) (not E) (= B (+ (- 1) C)))
      )
      (main@f.exit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (v_4 Bool) (v_5 Bool) (v_6 Bool) ) 
    (=>
      (and
        (main@f.exit A B)
        (g v_4 v_5 v_6 A C)
        (and (= v_4 true) (= v_5 false) (= v_6 false) (not D) (= D (= B C)))
      )
      main@f.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@f.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
