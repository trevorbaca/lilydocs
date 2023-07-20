\version "2.25.3"

\paper { indent = 0 tagline = ##f }

\markup "Both clefs red:"
\markup \vspace #1

\new Staff
{
    \clef "bass"
    \repeat unfold 10
    { g2. g4 }
    \break
    \once \override Staff.Clef.color = #red
    \clef "tenor"
    \repeat unfold 7
    { g8 g g2. }
}


\markup "Red left of break:"
\markup \vspace #1

\new Staff
{
  \clef "bass"
  \repeat unfold 10
  { g2. g4 }
  \break
  \once \override Staff.Clef.color = 
    #(lambda (grob) (if (= LEFT (ly:item-break-dir grob)) red))
  \clef "tenor"
  \repeat unfold 7
  { g8 g g2. }
}


\markup "Red right of break:"
\markup \vspace #1

\new Staff
{
  \clef "bass"
  \repeat unfold 10
  { g2. g4 }
  \break
  \once \override Staff.Clef.color = 
    #(lambda (grob) (if (= RIGHT (ly:item-break-dir grob)) red))
  \clef "tenor"
  \repeat unfold 7
  { g8 g g2. }
}

\markup "Red left of break, blue right of break:"
\markup \vspace #1

\new Staff
{
  \clef "bass"
  \repeat unfold 10
  { g2. g4 }
  \break
  \once \override Staff.Clef.color = 
    #(lambda (grob) (if (= LEFT (ly:item-break-dir grob)) red blue))
  \clef "tenor"
  \repeat unfold 7
  { g8 g g2. }
}


\markup "DOES NOT WORK:"
\markup \vspace #1

{
  % \once \override TextSpanner.color =
  %   #(lambda (grob) (if (= LEFT (ly:item-break-dir grob)) red blue))
  c'1
  \startTextSpan
  d'1
  \break
  e'1
  f'1
  \stopTextSpan
}
