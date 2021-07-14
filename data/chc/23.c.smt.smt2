(set-logic HORN)
( define-fun pre-f ( ( i Int )( j Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int ) ) Bool
	( and
		( = i i_1 )
		( = j j_1 )
		( = i_1 1 )
		( = j_1 20 )
	)
)

( define-fun trans-f ( ( i Int )( j Int )( i! Int )( j! Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int ) ) Bool
	( or
		( and
			( = i_2 i )
			( = j_2 j )
			( = i_2 i! )
			( = j_2 j! )
		)
		( and
			( = i_2 i )
			( = j_2 j )
			( >= j_2 i_2 )
			( = i_3 ( + i_2 2 ) )
			( = j_3 ( - j_2 1 ) )
			( = i_3 i! )
			( = j_3 j! )
		)
	)
)

( define-fun post-f ( ( i Int )( j Int )( i_0 Int )( i_1 Int )( i_2 Int )( i_3 Int )( j_0 Int )( j_1 Int )( j_2 Int )( j_3 Int ) ) Bool
	( or
		( not
			( and
				( = i i_2)
				( = j j_2)
			)
		)
		( not
			( and
				( not ( >= j_2 i_2 ) )
				( not ( = j_2 13 ) )
			)
		)
	)
)
(declare-fun inv-f (Int Int) Bool)

(assert (forall ((i Int) (j Int) (i_0 Int) (i_1 Int) (i_2 Int) (i_3 Int) (j_0 Int) (j_1 Int) (j_2 Int) (j_3 Int))
  (=> (pre-f i j i_0 i_1 i_2 i_3 j_0 j_1 j_2 j_3)
        (inv-f i j))))

(assert (forall ((i Int) (j Int) (i! Int) (j! Int) (i_0 Int) (i_1 Int) (i_2 Int) (i_3 Int) (j_0 Int) (j_1 Int) (j_2 Int) (j_3 Int))
  (=> (and 	( or
		( and
			( = i_2 i )
			( = j_2 j )
			( = i_2 i! )
			( = j_2 j! )
		)
		( and
			( = i_2 i )
			( = j_2 j )
			( >= j_2 i_2 )
			( = i_3 ( + i_2 2 ) )
			( = j_3 ( - j_2 1 ) )
			( = i_3 i! )
			( = j_3 j! )
		)
	)
        (inv-f i j))
        (inv-f i! j!))))

(assert (forall ((i Int) (j Int) (i_0 Int) (i_1 Int) (i_2 Int) (i_3 Int) (j_0 Int) (j_1 Int) (j_2 Int) (j_3 Int))
  (=> (inv-f i j)
	( or
		( not
			( and
				( = i i_2)
				( = j j_2)
			)
		)
		( not
			( and
				( not ( >= j_2 i_2 ) )
				( not ( = j_2 13 ) )
			)
		)
	)
)))

(check-sat)
(get-model)
