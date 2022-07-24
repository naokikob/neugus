(set-logic HORN)

(declare-fun |main@tailrecurse.i.i2| ( Int Int Int Int ) Bool)
(declare-fun |main@triangle1.exit.split| ( ) Bool)
(declare-fun |main@tailrecurse.i.i| ( Int Bool Int Int Int Int ) Bool)
(declare-fun |main@triangle1.exit| ( Int Int ) Bool)
(declare-fun |main@triangle.exit| ( Int Int Bool Int ) Bool)
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
  (forall ( (A Bool) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@entry E)
        (and (= C (= B 2))
     (= F (not (<= 10 J)))
     (= I (not (<= 1 J)))
     (= D E)
     (= G 0)
     (= A true)
     (= C true)
     (= F true)
     (= I true)
     (= A (= H 2)))
      )
      (main@triangle.exit G H I J)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Int) (E Bool) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@entry D)
        (and (= E (not (<= 10 H)))
     (= B (= K 2))
     (= G (not (<= 1 H)))
     (= J 0)
     (= C D)
     (= I H)
     (= A true)
     (= E true)
     (= B true)
     (not G)
     (= A (= F 2)))
      )
      (main@tailrecurse.i.i F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Bool) (J Int) ) 
    (=>
      (and
        (main@tailrecurse.i.i H I J C B D)
        (and (= A (+ (- 1) C)) (= G F) (= F (+ B C)) (= E true) (= E (not (<= D C))))
      )
      (main@triangle.exit G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Bool) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@tailrecurse.i.i F G H B A K)
        (and (= D (+ (- 1) B))
     (= J E)
     (= E (+ A B))
     (= I D)
     (not C)
     (= C (not (<= K B))))
      )
      (main@tailrecurse.i.i F G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@triangle.exit D A C B)
        (and (= C true) (= E 0))
      )
      (main@triangle1.exit D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) ) 
    (=>
      (and
        (main@triangle.exit C F A B)
        (and (= D B) (not A) (= E 0))
      )
      (main@tailrecurse.i.i2 C D E F)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Bool) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@tailrecurse.i.i2 G C B D)
        (and (= A (+ (- 1) C)) (= F (+ C B)) (= H F) (= E true) (= E (not (<= D C))))
      )
      (main@triangle1.exit G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@tailrecurse.i.i2 F B A I)
        (and (= H D)
     (= D (+ B A))
     (= G E)
     (= E (+ (- 1) B))
     (not C)
     (= C (not (<= I B))))
      )
      (main@tailrecurse.i.i2 F G H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@triangle1.exit A B)
        (and (not C) (= C (= A B)))
      )
      main@triangle1.exit.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@triangle1.exit.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
