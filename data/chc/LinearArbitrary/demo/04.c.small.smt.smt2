(set-logic HORN)

(declare-fun |fibo@UnifiedReturnBlock| ( Int Int ) Bool)
(declare-fun |main@entry| ( ) Bool)
(declare-fun |main@entry.split| ( ) Bool)
(declare-fun |fibo@_4| ( Int ) Bool)
(declare-fun |fibo@_6| ( Int ) Bool)
(declare-fun |fibo@_.0| ( Int Int ) Bool)
(declare-fun |fibo@UnifiedReturnBlock.split| ( Int Int ) Bool)
(declare-fun |fibo| ( Bool Bool Bool Int Int ) Bool)
(declare-fun |fibo@_tail| ( Int ) Bool)

(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 true) (= v_3 true) (= v_4 true))
      )
      (fibo v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 true) (= v_4 true))
      )
      (fibo v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (and true (= v_2 false) (= v_3 false) (= v_4 false))
      )
      (fibo v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (A Int) ) 
    (=>
      (and
        true
      )
      (fibo@_tail A)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (fibo@_tail C)
        (and (= A (not (<= 1 C))) (= A true) (= B 0))
      )
      (fibo@_.0 B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (fibo@_tail B)
        (and (not A) (= A (not (<= 1 B))))
      )
      (fibo@_4 B)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) (C Int) ) 
    (=>
      (and
        (fibo@_4 C)
        (and (= A (= C 1)) (= A true) (= B 1))
      )
      (fibo@_.0 B C)
    )
  )
)
(assert
  (forall ( (A Bool) (B Int) ) 
    (=>
      (and
        (fibo@_4 B)
        (and (not A) (= A (= B 1)))
      )
      (fibo@_6 B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (v_7 Bool) (v_8 Bool) (v_9 Bool) (v_10 Bool) (v_11 Bool) (v_12 Bool) ) 
    (=>
      (and
        (fibo@_6 G)
        (fibo v_7 v_8 v_9 A D)
        (fibo v_10 v_11 v_12 B C)
        (and (= v_7 true)
     (= v_8 false)
     (= v_9 false)
     (= v_10 true)
     (= v_11 false)
     (= v_12 false)
     (= B (+ (- 2) G))
     (= E (+ C D))
     (= F E)
     (= A (+ (- 1) G)))
      )
      (fibo@UnifiedReturnBlock F G)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (C Int) ) 
    (=>
      (and
        (fibo@_.0 A C)
        (= B A)
      )
      (fibo@UnifiedReturnBlock B C)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) ) 
    (=>
      (and
        (fibo@UnifiedReturnBlock A B)
        true
      )
      (fibo@UnifiedReturnBlock.split A B)
    )
  )
)
(assert
  (forall ( (A Int) (B Int) (v_2 Bool) (v_3 Bool) (v_4 Bool) ) 
    (=>
      (and
        (fibo@UnifiedReturnBlock.split B A)
        (and (= v_2 true) (= v_3 false) (= v_4 false))
      )
      (fibo v_2 v_3 v_4 A B)
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        true
      )
      main@entry
    )
  )
)
(assert
  (forall ( (A Int) (B Bool) (v_2 Bool) (v_3 Bool) (v_4 Bool) (v_5 Int) ) 
    (=>
      (and
        main@entry
        (fibo v_2 v_3 v_4 v_5 A)
        (and (= v_2 true) (= v_3 false) (= v_4 false) (= 10 v_5) (not B) (= B (= A 55)))
      )
      main@entry.split
    )
  )
)
(assert
  (forall ( (CHC_COMP_UNUSED Bool) ) 
    (=>
      (and
        main@entry.split
        true
      )
      false
    )
  )
)

(check-sat)
(exit)
