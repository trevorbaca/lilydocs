\version "2.25.7"

\layout { indent = 0 ragged-right = ##t }

\markup "1. Too much whitespace above tuplet bracket at start of second system:"

{
  \override Score.BarNumber.transparent = ##t
  \override TupletBracket.direction = #down
  \once \override TupletBracket.staff-padding = 3
  \times 4/5 { a4 b c' d' e' }
  \once \override TupletBracket.staff-padding = 3
  \times 8/10
  {
    a b c' d' e'
    \break
    f' g' a' b' c''
  }
  \once \override TupletBracket.staff-padding = 1.5
  \times 4/5 { f' g' a' b' c'' }
}

\markup "2. Perfect:"

{
  \override Score.BarNumber.transparent = ##t
  \override TupletBracket.direction = #down
  \once \override TupletBracket.staff-padding = 3
  \times 4/5 { a4 b c' d' e' }
  \once \override TupletBracket.after-line-breaking =
    #(lambda (grob)
      (let* ((orig (ly:grob-original grob))
             (siblings (if (ly:grob? orig)
                       (ly:spanner-broken-into orig)
                       '())))
        (ly:grob-set-property! (car siblings) 'staff-padding 3)
        (ly:grob-set-property! (car (cdr siblings)) 'staff-padding 1.5)
      )
    )
  \times 8/10
  {
    a b c' d' e'
    \break
    f' g' a' b' c''
  }
  \once \override TupletBracket.staff-padding = 1.5
  \times 4/5 { f' g' a' b' c'' }
}
