(set-logic HORN)

(declare-fun |main@.lr.ph4| ( Int Int Int ) Bool)
(declare-fun |main@.lr.ph| ( Int Int Int Int ) Bool)
(declare-fun |main@verifier.error.split| ( ) Bool)
(declare-fun |main@verifier.error| ( Int Int ) Bool)
(declare-fun |main@_11| ( Int Int Int Int ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
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
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (and G E))
     (= G (not (<= I J)))
     (= A D)
     (= B D)
     (= C D)
     (= F true)
     (= G true)
     (= E (not (<= H 0))))
      )
      (main@.lr.ph4 H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= F (and G E))
     (= G (not (<= K H)))
     (= A D)
     (= B D)
     (= C D)
     (= J H)
     (= F true)
     (not G)
     (= E (not (<= I 0))))
      )
      (main@.preheader I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) ) 
    (=>
      (and
        (main@.lr.ph4 B C A)
        (and (= E (* 2 B)) (= D A))
      )
      (main@_11 B C D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@.preheader C F B)
        (and (= D 0) (= E B) (= A true) (= A (not (<= F B))))
      )
      (main@.lr.ph C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader E A B)
        (and (= D 0) (not C) (= C (not (<= A B))))
      )
      (main@verifier.error D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_11 D E A G)
        (and (= F C) (= C (+ A G)) (= B true) (= B (not (<= E C))))
      )
      (main@_11 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@_11 E G A B)
        (and (= D (+ A B)) (= F D) (not C) (= C (not (<= G D))))
      )
      (main@.preheader E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph F A B I)
        (and (= D (+ 1 A))
     (= G D)
     (= H E)
     (= E (+ 2 B))
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
        (main@.lr.ph H A B C)
        (and (= F (+ 1 A)) (= G F) (= D (+ 2 B)) (not E) (= E (not (<= C D))))
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
