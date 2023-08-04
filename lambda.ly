\version "2.25.7"

\layout { indent = 0 ragged-right = ##t }

\markup { Use \typewriter "#(lambda (grob) ...)" to intercept a LilyPond override. }

\markup \vspace #3

\markup \typewriter "\override Staff.Clef.color = #red"

{
  \once \override Staff.Clef.color = #red
  c'4
}

\markup \typewriter "\override Staff.Clef.color = #(lambda (grob) red)"

{
  \once \override Staff.Clef.color = #(lambda (grob) red)
  c'4
}
