(set-logic HORN)

(declare-fun |main@.preheader.i2| ( Int Int Bool Int ) Bool)
(declare-fun |main@.preheader.i| ( Int Int Int Int Int Bool Int ) Bool)
(declare-fun |main@fib.exit12| ( Int Int ) Bool)
(declare-fun |main@.preheader1.i| ( Int Int Int Int Bool Int Int ) Bool)
(declare-fun |main@fib.exit| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph9.i| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.i10| ( Int Int Int Int Int ) Bool)
(declare-fun |main@.lr.ph.i| ( Int Int Int Int Int Int Int Int ) Bool)
(declare-fun |main@fib.exit12.split| ( ) Bool)
(declare-fun |main@entry| ( Int ) Bool)
(declare-fun |main@.preheader1.i1| ( Int Bool Int Int ) Bool)
(declare-fun |main@.lr.ph9.i6| ( Int Int Int Int Int ) Bool)

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
  (forall ( (A Bool) (B Bool) (C Bool) (D Int) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Bool) (U Int) ) 
    (=>
      (and
        (main@entry J)
        (let ((a!1 (= L (and (not (<= 6 U)) (>= U 0)))))
  (and (= B (= Q 1))
       (= C (= S 1))
       (= E (= D 1))
       (= K (= U P))
       a!1
       (= N (= M 0))
       (= T (not (<= U 0)))
       (= F J)
       (= G J)
       (= H J)
       (= I J)
       (= A true)
       (= B true)
       (= C true)
       (= E true)
       (= K true)
       (= L true)
       (= N true)
       (= A (= O 1))))
      )
      (main@.preheader.i O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Bool) (B Bool) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Bool) (L Bool) (M Int) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Bool) (T Int) (U Int) ) 
    (=>
      (and
        (main@entry J)
        (let ((a!1 (= L (and (not (<= 6 T)) (>= T 0)))))
  (and (= S (not (<= T 0)))
       (= A (= O 1))
       (= B (= Q 1))
       (= E (= U 1))
       (= K (= T P))
       a!1
       (= N (= M 0))
       (= F J)
       (= G J)
       (= H J)
       (= I J)
       (= D true)
       (= A true)
       (= B true)
       (= E true)
       (= K true)
       (= L true)
       (not N)
       (= D (= C 1))))
      )
      (main@.preheader1.i O P Q R S T U)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.preheader1.i C D E F A B J)
        (and (= G 0) (= H 1) (= A true) (= I B))
      )
      (main@.lr.ph9.i C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader1.i E F G H C A B)
        (and (not C) (= D 1))
      )
      (main@fib.exit D E F G H)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) ) 
    (=>
      (and
        (main@.preheader.i C D E F J A B)
        (and (= G 0) (= H 1) (= A true) (= I B))
      )
      (main@.lr.ph.i C D E F G H I J)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) ) 
    (=>
      (and
        (main@.preheader.i E F G H A C B)
        (and (not C) (= D 1))
      )
      (main@fib.exit D E F G H)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph9.i G H I J A F B N)
        (and (= D (+ (- 1) B))
     (= E (+ A F))
     (= M D)
     (= K F)
     (= L E)
     (= C true)
     (= C (not (<= B N))))
      )
      (main@.lr.ph9.i G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph9.i I J K L A B D E)
        (and (= C (+ (- 1) D)) (= G (+ A B)) (= H G) (not F) (= F (not (<= D E))))
      )
      (main@fib.exit H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) (M Int) (N Int) ) 
    (=>
      (and
        (main@.lr.ph.i G H I J A F B N)
        (and (= D (+ (- 1) B))
     (= E (+ A F))
     (= M D)
     (= K F)
     (= L E)
     (= C true)
     (= C (not (<= B N))))
      )
      (main@.lr.ph.i G H I J K L M N)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) (J Int) (K Int) (L Int) ) 
    (=>
      (and
        (main@.lr.ph.i I J K L A B D E)
        (and (= C (+ (- 1) D)) (= G (+ A B)) (= H G) (not F) (= F (not (<= D E))))
      )
      (main@fib.exit H I J K L)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Bool) (G Int) ) 
    (=>
      (and
        (main@fib.exit D E G A B)
        (and (= F (not (<= G 0))) (= C true) (= C (= B 0)))
      )
      (main@.preheader.i2 D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Bool) (F Int) (G Int) ) 
    (=>
      (and
        (main@fib.exit D A F G B)
        (and (= E (not (<= F 0))) (not C) (= C (= B 0)))
      )
      (main@.preheader1.i1 D E F G)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader1.i1 C A B G)
        (and (= D 0) (= E 1) (= A true) (= F B))
      )
      (main@.lr.ph9.i6 C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader1.i1 D C A B)
        (and (not C) (= E 1))
      )
      (main@fib.exit12 D E)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) ) 
    (=>
      (and
        (main@.preheader.i2 C G A B)
        (and (= D 0) (= E 1) (= A true) (= F B))
      )
      (main@.lr.ph.i10 C D E F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) ) 
    (=>
      (and
        (main@.preheader.i2 D A C B)
        (and (not C) (= E 1))
      )
      (main@fib.exit12 D E)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph9.i6 G A F B K)
        (and (= J D)
     (= E (+ A F))
     (= H F)
     (= I E)
     (= D (+ (- 1) B))
     (= C true)
     (= C (not (<= B K))))
      )
      (main@.lr.ph9.i6 G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph9.i6 H A B D E)
        (and (= C (+ (- 1) D)) (= G (+ A B)) (= I G) (not F) (= F (not (<= D E))))
      )
      (main@fib.exit12 H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int) ) 
    (=>
      (and
        (main@.lr.ph.i10 G A F B K)
        (and (= J D)
     (= E (+ A F))
     (= H F)
     (= I E)
     (= D (+ (- 1) B))
     (= C true)
     (= C (not (<= B K))))
      )
      (main@.lr.ph.i10 G H I J K)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Bool) (G Int) (H Int) (I Int) ) 
    (=>
      (and
        (main@.lr.ph.i10 H A B D E)
        (and (= C (+ (- 1) D)) (= G (+ A B)) (= I G) (not F) (= F (not (<= D E))))
      )
      (main@fib.exit12 H I)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Bool) ) 
    (=>
      (and
        (main@fib.exit12 A B)
        (and (not C) (= C (= A B)))
      )
      main@fib.exit12.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@fib.exit12.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
