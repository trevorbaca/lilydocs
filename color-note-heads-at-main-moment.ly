\version "2.25.3"

\paper { indent = 0 tagline = ##f }

\markup "Color note heads at main moment 0:" \markup \vspace #1

{
  \override NoteHead.color = #(lambda (grob)
    (if (equal? 0 (ly:moment-main (cdr (grob::rhythmic-location grob)))) red))
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
}

\markup "Color note heads at main moment 1/4:" \markup \vspace #1

{
  \override NoteHead.color = #(lambda (grob)
    (if (equal? 1/4 (ly:moment-main (cdr (grob::rhythmic-location grob)))) red))
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
}

\markup "Color note heads at main moment 2/4:" \markup \vspace #1

{
  \override NoteHead.color = #(lambda (grob)
    (if (equal? 2/4 (ly:moment-main (cdr (grob::rhythmic-location grob)))) red))
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
}

\markup "Color note heads at main moment 3/4:" \markup \vspace #1

{
  \override NoteHead.color = #(lambda (grob)
    (if (equal? 3/4 (ly:moment-main (cdr (grob::rhythmic-location grob)))) red))
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
}

\markup "Color note heads when 2/4 >= main moment:" \markup \vspace #1

{
  \override NoteHead.color = #(lambda (grob)
    (if (>= 2/4 (ly:moment-main (cdr (grob::rhythmic-location grob)))) blue))
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
}

\markup "Color note heads when 2/4 > main moment:" \markup \vspace #1

{
  \override NoteHead.color = #(lambda (grob)
    (if (> 2/4 (ly:moment-main (cdr (grob::rhythmic-location grob)))) blue))
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
  c'4 e' f' g'
}
