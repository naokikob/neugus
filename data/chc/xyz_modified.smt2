(set-logic HORN)

(declare-fun |loopb$u6|
  ( Bool Int Int ) Bool
)

(declare-fun |loopb$u5|
  ( Int Int ) Bool
)

(declare-fun |loopa$u3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:17| Int) (|$alpha-1:ax| Int) (|$alpha-2:az| Int) (|$knormal:1| Bool) (|$knormal:2| Int) (|$knormal:4| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:4| (- |$alpha-2:az| 2)) (= |$knormal:2| (+ |$alpha-1:ax| 1)) (= |$knormal:1| (< |$alpha-1:ax| 10)) (= |$V-reftype:17| |$knormal:6|) |$knormal:1| (|loopa$u3| |$knormal:6| |$knormal:4| |$knormal:2|) true true )
      (|loopa$u3| |$V-reftype:17| |$alpha-2:az| |$alpha-1:ax|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:ax| Int) (|$alpha-2:az| Int) (|$knormal:1| Bool) (|$knormal:2| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| (- |$alpha-2:az| 2)) (= |$knormal:2| (+ |$alpha-1:ax| 1)) (= |$knormal:1| (< |$alpha-1:ax| 10)) |$knormal:1| true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:ax| Int) (|$alpha-2:az| Int) (|$knormal:1| Bool) (|$knormal:2| Int) (|$knormal:4| Int) )
    (=>
      ( and (= |$knormal:4| (- |$alpha-2:az| 2)) (= |$knormal:2| (+ |$alpha-1:ax| 1)) (= |$knormal:1| (< |$alpha-1:ax| 10)) |$knormal:1| true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:18| Int) (|$alpha-1:ax| Int) (|$alpha-2:az| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (< |$alpha-1:ax| 10)) (= |$V-reftype:18| |$alpha-2:az|) (not |$knormal:1|) true true )
      (|loopa$u3| |$V-reftype:18| |$alpha-2:az| |$alpha-1:ax|)
    )
  )
)
(assert
  (forall ( (|$alpha-11:rsx| Int) (|$alpha-8:x| Int) (|$alpha-9:z| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$alpha-9:z| 0) (= |$alpha-8:x| 0) (= |$alpha-11:rsx| 10) (|loopa$u3| |$knormal:17| |$alpha-9:z| |$alpha-8:x|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-11:rsx| Int) (|$alpha-8:x| Int) (|$alpha-9:z| Int) (|$knormal:17| Int) )
    (=>
      ( and (= |$alpha-9:z| 0) (= |$alpha-8:x| 0) (= |$alpha-11:rsx| 10) (|loopa$u3| |$knormal:17| |$alpha-9:z| |$alpha-8:x|) )
      (|loopb$u5| |$knormal:17| |$alpha-11:rsx|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Bool) (|$alpha-3:bx| Int) (|$alpha-4:bz| Int) (|$alpha-5:rz| Int) (|$alpha-6:rx| Int) (|$knormal:11| Bool) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (> |$alpha-3:bx| 0)) (= |$alpha-6:rx| (- |$alpha-3:bx| 1)) (= |$alpha-5:rz| (+ |$alpha-4:bz| 2)) (= |$V-reftype:22| |$knormal:11|) |$knormal:7| (|loopb$u6| |$knormal:11| |$alpha-5:rz| |$alpha-6:rx|) (|loopb$u5| |$alpha-4:bz| |$alpha-3:bx|) true )
      (|loopb$u6| |$V-reftype:22| |$alpha-4:bz| |$alpha-3:bx|)
    )
  )
)
(assert
  (forall ( (|$alpha-3:bx| Int) (|$alpha-4:bz| Int) (|$alpha-5:rz| Int) (|$alpha-6:rx| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (> |$alpha-3:bx| 0)) (= |$alpha-6:rx| (- |$alpha-3:bx| 1)) (= |$alpha-5:rz| (+ |$alpha-4:bz| 2)) |$knormal:7| (|loopb$u5| |$alpha-4:bz| |$alpha-3:bx|) true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-3:bx| Int) (|$alpha-4:bz| Int) (|$alpha-5:rz| Int) (|$alpha-6:rx| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:7| (> |$alpha-3:bx| 0)) (= |$alpha-6:rx| (- |$alpha-3:bx| 1)) (= |$alpha-5:rz| (+ |$alpha-4:bz| 2)) |$knormal:7| (|loopb$u5| |$alpha-4:bz| |$alpha-3:bx|) true )
      (|loopb$u5| |$alpha-5:rz| |$alpha-6:rx|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:24| Bool) (|$alpha-3:bx| Int) (|$alpha-4:bz| Int) (|$knormal:7| Bool) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (> |$alpha-4:bz| (- 1))) (= |$knormal:7| (> |$alpha-3:bx| 0)) (= |$V-reftype:24| true) (not |$knormal:7|) |$knormal:8| (|loopb$u5| |$alpha-4:bz| |$alpha-3:bx|) true )
      (|loopb$u6| |$V-reftype:24| |$alpha-4:bz| |$alpha-3:bx|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-3:bx| Int) (|$alpha-4:bz| Int) (|$knormal:7| Bool) (|$knormal:8| Bool) )
    ( and (= |$knormal:8| (> |$alpha-4:bz| (- 1))) (= |$knormal:7| (> |$alpha-3:bx| 0)) (not |$knormal:8|) (not |$knormal:7|) (|loopb$u5| |$alpha-4:bz| |$alpha-3:bx|) true )
    )
  )
)
(assert
  (forall ( (|$alpha-8:x| Int) (|$alpha-9:z| Int) )
    (=>
      ( and (= |$alpha-9:z| 0) (= |$alpha-8:x| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-8:x| Int) (|$alpha-9:z| Int) )
    (=>
      ( and (= |$alpha-9:z| 0) (= |$alpha-8:x| 0) )
      true
    )
  )
)

(check-sat)

(get-model)

(exit)

