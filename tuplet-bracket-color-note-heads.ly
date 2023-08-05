\version "2.25.7"

\layout { indent = 0 ragged-right = ##t }

color-tuplet-note-heads = #(
    lambda (grob)
    (ly:grob-set-property! (car (car (get-bound-note-heads grob))) 'color red)
    (ly:grob-set-property! (car (cdr (get-bound-note-heads grob))) 'color green)
    )

\markup { Example: tuplet-bracket-color-note-heads.ly. }
\markup \vspace #1
\markup { "LilyPond's" \typewriter "get-bound-note-heads" returns the first
 and last note heads in any spanner. }
\markup { Here we color the first and last note heads of every tuplet: }
\markup \vspace #2

{
  \override Score.BarNumber.transparent = ##t
  \override TupletBracket.after-line-breaking = #color-tuplet-note-heads
  \times 2/3 { c'2 d' e' }
  \times 2/3 { c'2 d' e' }
  \times 2/3 { c'2 d' e' }
}

\markup { Notes: }
\markup \vspace #1
\markup
{
    LilyPond's \typewriter "get-bound-note-heads" fails when
    \typewriter "\set Score.tupletFullLength = ##t".
}

\markup { The setting binds tuplets to a note column on the left (which is good). }

\markup { But the setting binds tuplets to a non-musical paper column on the right. }

\markup { This causes \typewriter "get-bound-note-heads" to raise a fatal error. }
