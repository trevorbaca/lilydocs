\version "2.25.7"

\layout { indent = 0 ragged-right = ##t }

{
  \override Score.BarNumber.transparent = ##t
  \override TupletBracket.direction = #down
  \override TupletBracket.staff-padding = 2
  \once \override TupletBracket.after-line-breaking = #
    (lambda (grob)
      (let* ((orig (ly:grob-original grob))
             (siblings (if (ly:grob? orig)
                       (ly:spanner-broken-into orig)
                       '())))
        (ly:grob-set-property! (car siblings) 'color red)
        (ly:grob-set-property! (car (cdr siblings)) 'color blue)
      )
    )
  \times 8/10 { c'4 d' e' f' g' \break a' b' c'' d'' e'' }
}
