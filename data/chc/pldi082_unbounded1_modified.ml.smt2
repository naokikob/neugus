(set-logic HORN)

(declare-fun |loop$u4|
  ( Bool Int Int Int ) Bool
)

(declare-fun |loop$u3|
  ( Int Int Int ) Bool
)

(assert
  (forall ( (|$V-reftype:23| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:2| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (+ |$alpha-2:ly| 1)) (= |$V-reftype:23| |$knormal:7|) (not |$knormal:1|) |$knormal:13| (|loop$u4| |$knormal:7| |$alpha-3:ln| |$alpha-4:ny| |$knormal:2|) (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:23| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:37| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:2| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- |$alpha-2:ly| 1)) (= |$V-reftype:37| |$knormal:7|) (not |$knormal:13|) (not |$knormal:1|) |$knormal:15| (|loop$u4| |$knormal:7| |$alpha-3:ln| |$alpha-4:ny| |$knormal:2|) (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:37| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:49| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:2| Int) (|$knormal:7| Bool) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- 4)) (= |$V-reftype:49| |$knormal:7|) (not |$knormal:15|) (not |$knormal:13|) (not |$knormal:1|) (|loop$u4| |$knormal:7| |$alpha-3:ln| |$alpha-4:ny| |$knormal:2|) (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:49| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:19| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Bool) (|$knormal:13| Bool) (|$knormal:8| Bool) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (= |$alpha-4:ny| (- 1))) (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:12| (< |$alpha-1:lx| |$knormal:11|)) (= |$knormal:11| (+ |$knormal:10| 3)) (= |$knormal:10| (* 2 |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (+ |$alpha-2:ly| 1)) (= |$V-reftype:19| true) |$knormal:9| |$knormal:8| |$knormal:13| |$knormal:12| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:19| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:33| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:8| Bool) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (= |$alpha-4:ny| (- 1))) (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:12| (< |$alpha-1:lx| |$knormal:11|)) (= |$knormal:11| (+ |$knormal:10| 3)) (= |$knormal:10| (* 2 |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- |$alpha-2:ly| 1)) (= |$V-reftype:33| true) (not |$knormal:13|) |$knormal:9| |$knormal:8| |$knormal:15| |$knormal:12| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:33| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:45| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:8| Bool) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (= |$alpha-4:ny| (- 1))) (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:12| (< |$alpha-1:lx| |$knormal:11|)) (= |$knormal:11| (+ |$knormal:10| 3)) (= |$knormal:10| (* 2 |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- 4)) (= |$V-reftype:45| true) (not |$knormal:15|) (not |$knormal:13|) |$knormal:9| |$knormal:8| |$knormal:12| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:45| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Bool) (|$knormal:13| Bool) (|$knormal:8| Bool) (|$knormal:9| Bool) )
    ( and (= |$knormal:9| (= |$alpha-4:ny| (- 1))) (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:12| (< |$alpha-1:lx| |$knormal:11|)) (= |$knormal:11| (+ |$knormal:10| 3)) (= |$knormal:10| (* 2 |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (+ |$alpha-2:ly| 1)) (not |$knormal:12|) |$knormal:9| |$knormal:8| |$knormal:13| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:20| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:8| Bool) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (= |$alpha-4:ny| (- 1))) (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (+ |$alpha-2:ly| 1)) (= |$V-reftype:20| true) (not |$knormal:9|) |$knormal:8| |$knormal:13| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:20| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:21| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (+ |$alpha-2:ly| 1)) (= |$V-reftype:21| true) (not |$knormal:8|) |$knormal:13| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:21| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:8| Bool) (|$knormal:9| Bool) )
    ( and (= |$knormal:9| (= |$alpha-4:ny| (- 1))) (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:12| (< |$alpha-1:lx| |$knormal:11|)) (= |$knormal:11| (+ |$knormal:10| 3)) (= |$knormal:10| (* 2 |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- |$alpha-2:ly| 1)) (not |$knormal:13|) (not |$knormal:12|) |$knormal:9| |$knormal:8| |$knormal:15| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:34| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:8| Bool) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (= |$alpha-4:ny| (- 1))) (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- |$alpha-2:ly| 1)) (= |$V-reftype:34| true) (not |$knormal:9|) (not |$knormal:13|) |$knormal:8| |$knormal:15| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:34| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:35| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- |$alpha-2:ly| 1)) (= |$V-reftype:35| true) (not |$knormal:8|) (not |$knormal:13|) |$knormal:15| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:35| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (not (exists ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:10| Int) (|$knormal:11| Int) (|$knormal:12| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:8| Bool) (|$knormal:9| Bool) )
    ( and (= |$knormal:9| (= |$alpha-4:ny| (- 1))) (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:12| (< |$alpha-1:lx| |$knormal:11|)) (= |$knormal:11| (+ |$knormal:10| 3)) (= |$knormal:10| (* 2 |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- 4)) (not |$knormal:15|) (not |$knormal:13|) (not |$knormal:12|) |$knormal:9| |$knormal:8| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
    )
  )
)
(assert
  (forall ( (|$V-reftype:46| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:8| Bool) (|$knormal:9| Bool) )
    (=>
      ( and (= |$knormal:9| (= |$alpha-4:ny| (- 1))) (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- 4)) (= |$V-reftype:46| true) (not |$knormal:9|) (not |$knormal:15|) (not |$knormal:13|) |$knormal:8| |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:46| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (forall ( (|$V-reftype:47| Bool) (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:8| Bool) )
    (=>
      ( and (= |$knormal:8| (>= |$alpha-3:ln| 0)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- 4)) (= |$V-reftype:47| true) (not |$knormal:8|) (not |$knormal:15|) (not |$knormal:13|) |$knormal:1| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u4| |$V-reftype:47| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (+ |$alpha-2:ly| 1)) (not |$knormal:1|) |$knormal:13| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (+ |$alpha-2:ly| 1)) (not |$knormal:1|) |$knormal:13| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (+ |$alpha-2:ly| 1)) (not |$knormal:1|) |$knormal:13| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u3| |$alpha-3:ln| |$alpha-4:ny| |$knormal:2|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- |$alpha-2:ly| 1)) (not |$knormal:13|) (not |$knormal:1|) |$knormal:15| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- |$alpha-2:ly| 1)) (not |$knormal:13|) (not |$knormal:1|) |$knormal:15| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- |$alpha-2:ly| 1)) (not |$knormal:13|) (not |$knormal:1|) |$knormal:15| (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u3| |$alpha-3:ln| |$alpha-4:ny| |$knormal:2|)
    )
  )
)
(assert
  (forall ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- 4)) (not |$knormal:15|) (not |$knormal:13|) (not |$knormal:1|) (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- 4)) (not |$knormal:15|) (not |$knormal:13|) (not |$knormal:1|) (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-1:lx| Int) (|$alpha-2:ly| Int) (|$alpha-3:ln| Int) (|$alpha-4:ny| Int) (|$knormal:1| Bool) (|$knormal:13| Bool) (|$knormal:14| Int) (|$knormal:15| Bool) (|$knormal:2| Int) )
    (=>
      ( and (= |$knormal:2| (+ |$alpha-1:lx| 1)) (= |$knormal:15| (>= |$alpha-1:lx| |$knormal:14|)) (= |$knormal:14| (+ |$alpha-3:ln| 1)) (= |$knormal:13| (<= |$alpha-1:lx| |$alpha-3:ln|)) (= |$knormal:1| (< |$alpha-4:ny| 0)) (= |$alpha-4:ny| (- 4)) (not |$knormal:15|) (not |$knormal:13|) (not |$knormal:1|) (|loop$u3| |$alpha-3:ln| |$alpha-2:ly| |$alpha-1:lx|) true true )
      (|loop$u3| |$alpha-3:ln| |$alpha-4:ny| |$knormal:2|)
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:16| Bool) )
    (=>
      ( and (= |$knormal:16| (>= |$alpha-5:n| 0)) (= |$alpha-7:y| 0) (= |$alpha-6:x| 0) |$knormal:16| )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:16| Bool) )
    (=>
      ( and (= |$knormal:16| (>= |$alpha-5:n| 0)) (= |$alpha-7:y| 0) (= |$alpha-6:x| 0) |$knormal:16| )
      true
    )
  )
)
(assert
  (forall ( (|$alpha-5:n| Int) (|$alpha-6:x| Int) (|$alpha-7:y| Int) (|$knormal:16| Bool) )
    (=>
      ( and (= |$knormal:16| (>= |$alpha-5:n| 0)) (= |$alpha-7:y| 0) (= |$alpha-6:x| 0) |$knormal:16| )
      (|loop$u3| |$alpha-5:n| |$alpha-7:y| |$alpha-6:x|)
    )
  )
)
(check-sat)

(get-model)

(exit)

