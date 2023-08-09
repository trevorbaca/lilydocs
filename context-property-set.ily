incrementCurrentBarNumber = \context Score \applyContext #(lambda (context)
  (ly:context-set-property! context 'currentBarNumber
    (+ 10 (ly:context-property context 'currentBarNumber))
  )
)

{ c'1 \break c'1 \incrementCurrentBarNumber \break c'1 \break c'1 }
