(set-logic HORN)

(declare-fun |loopb$u7|
  ( Int Int Int ) Bool
)

(declare-fun |loopa$u4|
  ( Int Int Int Int ) Bool
)

(assert
  (forall ( (|$alpha-10:x| Int) )
    (=>
      ( and (= |$alpha-10:x| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x| Int) )
    (=>
      ( and (= |$alpha-10:x| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x| Int) )
    (=>
      ( and (= |$alpha-10:x| 0) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Int) (|$alpha-1:b| Int) (|$alpha-2:ax| Int) (|$alpha-3:az| Int) (|$knormal:1| Bool) (|$knormal:3| Int) (|$knormal:6| Int) (|$knormal:8| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:az| 2)) (= |$knormal:3| (+ |$alpha-2:ax| 1)) (= |$knormal:1| (< |$alpha-2:ax| |$alpha-1:b|)) (= |$V-reftype:21| |$knormal:8|) |$knormal:1| (|loopa$u4| |$knormal:8| |$knormal:6| |$knormal:3| |$alpha-1:b|) true true true )
      (|loopa$u4| |$V-reftype:21| |$alpha-3:az| |$alpha-2:ax| |$alpha-1:b|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:b| Int) (|$alpha-2:ax| Int) (|$alpha-3:az| Int) (|$knormal:1| Bool) (|$knormal:3| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:az| 2)) (= |$knormal:3| (+ |$alpha-2:ax| 1)) (= |$knormal:1| (< |$alpha-2:ax| |$alpha-1:b|)) |$knormal:1| true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:b| Int) (|$alpha-2:ax| Int) (|$alpha-3:az| Int) (|$knormal:1| Bool) (|$knormal:3| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:az| 2)) (= |$knormal:3| (+ |$alpha-2:ax| 1)) (= |$knormal:1| (< |$alpha-2:ax| |$alpha-1:b|)) |$knormal:1| true true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:b| Int) (|$alpha-2:ax| Int) (|$alpha-3:az| Int) (|$knormal:1| Bool) (|$knormal:3| Int) (|$knormal:6| Int) )
    (=>
      ( and (= |$knormal:6| (- |$alpha-3:az| 2)) (= |$knormal:3| (+ |$alpha-2:ax| 1)) (= |$knormal:1| (< |$alpha-2:ax| |$alpha-1:b|)) |$knormal:1| true true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:22| Int) (|$alpha-1:b| Int) (|$alpha-2:ax| Int) (|$alpha-3:az| Int) (|$knormal:1| Bool) )
    (=>
      ( and (= |$knormal:1| (< |$alpha-2:ax| |$alpha-1:b|)) (= |$V-reftype:22| |$alpha-3:az|) (not |$knormal:1|) true true true )
      (|loopa$u4| |$V-reftype:22| |$alpha-3:az| |$alpha-2:ax| |$alpha-1:b|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-10:x| Int) (|$alpha-8:z| Int) (|$alpha-9:b| Int) (|$knormal:15| Int) (|$knormal:17| Bool) (|$knormal:22| Int) )
    ( and (= |$knormal:17| (>= |$knormal:15| |$alpha-8:z|)) (= |$alpha-10:x| 0) (not |$knormal:17|) (|loopb$u7| |$knormal:15| |$knormal:22| |$alpha-9:b|) (|loopa$u4| |$knormal:22| |$alpha-8:z| |$alpha-10:x| |$alpha-9:b|) )
    )
  )
)
(assert
  (forall ( (|$alpha-10:x| Int) (|$alpha-8:z| Int) (|$alpha-9:b| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$alpha-10:x| 0) (|loopa$u4| |$knormal:22| |$alpha-8:z| |$alpha-10:x| |$alpha-9:b|) )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-10:x| Int) (|$alpha-8:z| Int) (|$alpha-9:b| Int) (|$knormal:22| Int) )
    (=>
      ( and (= |$alpha-10:x| 0) (|loopa$u4| |$knormal:22| |$alpha-8:z| |$alpha-10:x| |$alpha-9:b|) )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:26| Int) (|$alpha-4:bx| Int) (|$alpha-5:bz| Int) (|$alpha-6:rz| Int) (|$alpha-7:rx| Int) (|$knormal:12| Int) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (> |$alpha-4:bx| 0)) (= |$alpha-7:rx| (- |$alpha-4:bx| 1)) (= |$alpha-6:rz| (+ |$alpha-5:bz| 2)) (= |$V-reftype:26| |$knormal:12|) |$knormal:9| (|loopb$u7| |$knormal:12| |$alpha-6:rz| |$alpha-7:rx|) true true )
      (|loopb$u7| |$V-reftype:26| |$alpha-5:bz| |$alpha-4:bx|)
    )
  )
)
(assert
  (forall ( (|$alpha-4:bx| Int) (|$alpha-5:bz| Int) (|$alpha-6:rz| Int) (|$alpha-7:rx| Int) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (> |$alpha-4:bx| 0)) (= |$alpha-7:rx| (- |$alpha-4:bx| 1)) (= |$alpha-6:rz| (+ |$alpha-5:bz| 2)) |$knormal:9| true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-4:bx| Int) (|$alpha-5:bz| Int) (|$alpha-6:rz| Int) (|$alpha-7:rx| Int) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (> |$alpha-4:bx| 0)) (= |$alpha-7:rx| (- |$alpha-4:bx| 1)) (= |$alpha-6:rz| (+ |$alpha-5:bz| 2)) |$knormal:9| true true )
      true
    )
  )
)
(assert
  (forall ( (|$V-reftype:27| Int) (|$alpha-4:bx| Int) (|$alpha-5:bz| Int) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (> |$alpha-4:bx| 0)) (= |$V-reftype:27| |$alpha-5:bz|) (not |$knormal:9|) true true )
      (|loopb$u7| |$V-reftype:27| |$alpha-5:bz| |$alpha-4:bx|)
    )
  )
)
(check-sat)

(get-model)

(exit)

