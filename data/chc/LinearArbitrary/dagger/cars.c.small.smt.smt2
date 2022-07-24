(set-logic HORN)

(declare-fun |main@._crit_edge| ( Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@_37| ( Int Int Int ) Bool)
(declare-fun |main@verifier.error| ( ) Bool)

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
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Bool) (K Bool) (L Bool) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Bool) (S Bool) (T Bool) (U Int) (V Int) (W Int) (X Bool) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) ) 
    (=>
      (and
        (main@entry V)
        (let ((a!1 (= R (and (not (<= 11 Q)) (>= Q 0)))))
  (and (= J (not (<= C1 5)))
       (= K (not (<= 0 B1)))
       (= L (not (<= B1 C1)))
       (= M (or K J))
       (= N (or M L))
       a!1
       (= S (= P B1))
       (= T (and S R))
       (= X (= W 0))
       (= C V)
       (= D V)
       (= E V)
       (= F V)
       (= G V)
       (= H V)
       (= I V)
       (= O (* 2 Y))
       (= P (+ O (* (- 1) C1)))
       (= Q (+ 5 Y))
       (= U V)
       (= Z 0)
       (= A1 Y)
       (= B true)
       (not N)
       (= T true)
       (= X true)
       (= B (= A 0))))
      )
      (main@._crit_edge Z A1 B1 C1)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Bool) (J Bool) (K Bool) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Bool) (R Bool) (S Bool) (T Int) (U Int) (V Bool) (W Int) (X Int) (Y Int) (Z Int) (A1 Int) (B1 Int) (C1 Int) ) 
    (=>
      (and
        (main@entry A1)
        (let ((a!1 (= Q (and (not (<= 11 P)) (>= P 0)))))
  (and (= I (not (<= Y 5)))
       a!1
       (= V (= U 0))
       (= J (not (<= 0 X)))
       (= K (not (<= X Y)))
       (= L (or J I))
       (= M (or L K))
       (= R (= O X))
       (= S (and R Q))
       (= B A1)
       (= N (* 2 W))
       (= T A1)
       (= C A1)
       (= D A1)
       (= E A1)
       (= F A1)
       (= G A1)
       (= H A1)
       (= O (+ N (* (- 1) Y)))
       (= P (+ 5 W))
       (= Z W)
       (= B1 0)
       (= A true)
       (not V)
       (not M)
       (= S true)
       (= A (= C1 0))))
      )
      (main@.lr.ph X Y Z A1 B1 C1)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph R S G J H L)
        (let ((a!1 (= B (and (not (<= 11 A)) (>= A 0)))))
  (and (= E (= D 0))
       (= M (= K L))
       (= N (+ 1 H))
       (= A (+ 5 G))
       (= F (ite E 1 (- 1)))
       (= O (+ F G))
       (= P N)
       (= Q O)
       (= C J)
       (= I J)
       (= B true)
       (= M true)
       a!1))
      )
      (main@._crit_edge P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Int) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@.lr.ph N O G Q H S)
        (let ((a!1 (= B (and (not (<= 11 A)) (>= A 0)))))
  (and a!1
       (= E (= D 0))
       (= A (+ 5 G))
       (= F (ite E 1 (- 1)))
       (= L (+ F G))
       (= M (+ 1 H))
       (= P L)
       (= R M)
       (= C Q)
       (= I Q)
       (not K)
       (= B true)
       (= K (= J S))))
      )
      (main@.lr.ph N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool) ) 
    (=>
      (and
        (main@._crit_edge B A D E)
        (and (= C (+ A B)) (= F (* 2 C)) (= G (+ D E)) (= H true) (= H (not (<= G F))))
      )
      main@verifier.error
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@._crit_edge F G B C)
        (and (= A (+ G F)) (= D (* 2 A)) (= H (+ B C)) (not E) (= E (not (<= H D))))
      )
      (main@_37 F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Bool) ) 
    (=>
      (and
        (main@_37 A B D)
        (and (= C (+ A (* (- 1) B)))
     (= E (* 2 C))
     (= F (+ D E))
     (not G)
     (= G (not (<= F (- 1)))))
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
