\version "2.25.3"

\paper { indent = 0 tagline = ##f }

\markup "Conditionally colors both tuplet brackets:" \markup \vspace #1

{
  \once \override TupletBracket.color = #(lambda (grob)
    (if (equal? DOWN (ly:grob-property grob 'direction)) red blue)
  )
  \times 2/3 {
    \times 2/3 { c'4 c' c' }
    c'2
    c'2
  }
}

\markup "Conditionally colors only the inner tuplet bracket:" \markup \vspace #1

{
  \times 2/3 {
    \tweak color #(lambda (grob)
        (if (equal? DOWN (ly:grob-property grob 'direction)) red blue))
    \times 2/3 { c'4 c' c' }
    c'2
    c'2
  }
}
