(set-logic HORN)
(declare-fun inv-f (Int Int Int Int Int) Bool)
;;(define-fun pre-f (Int Int Int Int Int) Bool)
;;(define-fun trans-f (Int Int Int Int Int Int Int Int Int Int) Bool)
;;(define-fun post-f (Int Int Int Int Int) Bool)

(define-fun pre-f ((k Int) (b Int) (i Int) (j Int) (n Int)) Bool
(and (> k 0) (and (= i j) (and (= n 0) (or (= b 1) (= b 0))))))
;; increment i and j alternately
;; invariant:
;; k>0 /\ 0<=b<=1 /\ (n <= 2k /\ n mod 2=0 => i=j) /\ (n <= 2k /\ n mod 2=1 => i=j+1-2b ?)

(define-fun trans-f ((k Int) (b Int) (i Int) (j Int) (n Int) (k! Int) (b! Int) (i! Int) (j! Int) (n! Int)) Bool
    (or (and (>= n (* 2 k))
             (and (= k! k)
	           (and (= b! b)
		        (and (= i! i) (and (= j! j) (= n! n))))))
     (or (and (< n (* 2 k))
              (and (= b 1)
	           (and (= k! k)
		        (and (= b! 0)
			     (and (= i! (+ i 1))
			          (and (= j! j) (= n! (+ n 1))))))))
        (and (< n (* 2 k)) (and (not (= b 1))
	     (and (= k! k) (and (= b! 1)
	         (and (= i! i) (and (= j! (+ j 1)) (= n! (+ n 1)))))))))))


(define-fun post-f ((k Int) (b Int) (i Int) (j Int) (n Int)) Bool
(=> (>= n (* 2 k)) (= i j)))

(assert (forall ((k Int) (b Int) (i Int) (j Int) (n Int))
    (=> (and (> k 0) (and (= i j) (and (= n 0) (or (= b 1) (= b 0)))))
      (inv-f k b i j n))))
;;    (=> (pre-f k b i j n) (inv-f k b i j n))))

(assert (forall ((k Int) (b Int) (i Int) (j Int) (n Int) (k1 Int) (b1 Int) (i1 Int) (j1 Int) (n1 Int))
 (=> (and (inv-f k b i j n)
     (or (and (>= n (* 2 k))
             (and (= k1 k)
	           (and (= b1 b)
		        (and (= i1 i) (and (= j1 j) (= n1 n))))))
     (or (and (< n (* 2 k))
              (and (= b 1)
	           (and (= k1 k)
		        (and (= b1 0)
			     (and (= i1 (+ i 1))
			          (and (= j1 j) (= n1 (+ n 1))))))))
        (and (< n (* 2 k)) (and (not (= b 1))
	     (and (= k1 k) (and (= b1 1)
	         (and (= i1 i) (and (= j1 (+ j 1)) (= n1 (+ n 1)))))))))))
        (inv-f k1 b1 i1 j1 n1))))
		 

;;    (=> (and (inv-f k b i j n) (trans-f k b i j n k1 b1 i1 j1 n1))
;;        (inv-f k1 b1 i1 j1 n1))))

(assert (forall ((k Int) (b Int) (i Int) (j Int) (n Int))
    (=> (inv-f k b i j n)
        (=> (>= n (* 2 k)) (= i j)))))
;;(post-f k b i j n))))

(assert (forall ((k Int) (b Int) (i Int) (j Int) (n Int))
    (=> (and (= (mod n 2) 0) (inv-f k b i j n)) (inv-f k b i j n))))

(check-sat)
(get-model)

