(set-logic HORN)

(declare-fun |main@tailrecurse.i| ( Int Int Int Int Int Int ) Bool)
(declare-fun |main@f.exit| ( Int Int Int Int ) Bool)
(declare-fun |main@g.exit| ( Int Int ) Bool)
(declare-fun |main@.lr.ph.i| ( Int Int Int Int Int ) Bool)
(declare-fun |main@g.exit.split| ( ) Bool)
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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) ) 
    (=>
      (and
        (main@entry G)
        (let ((a!1 (= H (and (not (<= 7 M)) (>= M 0))))
      (a!2 (= I (and (not (<= 7 P)) (>= P 0)))))
  (and (= C (= B 2))
       a!1
       a!2
       (= J (not (= M R)))
       (= K (not (<= R P)))
       (= L (or K J))
       (= N (not (<= 1 M)))
       (= D G)
       (= E G)
       (= F G)
       (= O 0)
       (= A true)
       (= C true)
       (= H true)
       (= I true)
       (not L)
       (= N true)
       (= A (= Q 1))))
      )
      (main@f.exit O P Q R)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Bool) (H Bool) (I Bool) (J Bool) (K Bool) (L Bool) (M Int) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int) ) 
    (=>
      (and
        (main@entry F)
        (let ((a!1 (= G (and (not (<= 7 M)) (>= M 0))))
      (a!2 (= H (and (not (<= 7 N)) (>= N 0)))))
  (and a!1
       a!2
       (= B (= S 2))
       (= I (not (= M P)))
       (= J (not (<= P N)))
       (= K (or J I))
       (= L (not (<= 1 M)))
       (= D F)
       (= C F)
       (= E F)
       (= Q M)
       (= R 0)
       (= A true)
       (= G true)
       (= H true)
       (= B true)
       (not K)
       (not L)
       (= A (= O 1))))
      )
      (main@tailrecurse.i N O P Q R S)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@tailrecurse.i H I J C B D)
        (and (= F (+ B C)) (= G F) (= A (+ (- 1) C)) (= E true) (= E (not (<= D C))))
      )
      (main@f.exit G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@tailrecurse.i F G H B A K)
        (and (= E (+ A B))
     (= I D)
     (= J E)
     (= D (+ (- 1) B))
     (not C)
     (= C (not (<= K B))))
      )
      (main@tailrecurse.i F G H I J K)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@f.exit C E G B)
        (and (= D 0) (= F B) (= A true) (= A (not (<= B 0))))
      )
      (main@.lr.ph.i C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Bool) (E Int) (F Int) ) 
    (=>
      (and
        (main@f.exit E A B C)
        (and (= F 0) (not D) (= D (not (<= C 0))))
      )
      (main@g.exit E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.lr.ph.i F A H B J)
        (and (= D (+ (- 1) B))
     (= E (+ A H))
     (= G E)
     (= I D)
     (= C true)
     (= C (not (<= B J))))
      )
      (main@.lr.ph.i F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.i H A B D E)
        (and (= C (+ (- 1) D)) (= G (+ A B)) (= I G) (not F) (= F (not (<= D E))))
      )
      (main@g.exit H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@g.exit A B)
        (and (= C true) (= C (not (<= A B))))
      )
      main@g.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@g.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
