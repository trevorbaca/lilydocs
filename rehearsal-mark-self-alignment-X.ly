\version "2.25.3"

\layout {
  indent = 0
  ragged-right = ##t
  \context { \Score \remove Bar_number_engraver }
}

\paper { tagline = ##f }

\markup "1. Default rehearsal mark positioning:"
\markup \vspace #1

#(define (at-line-beginning? grob)
   (let ((col (ly:item-get-column grob)))
     (if (eq? #t (ly:grob-property col 'non-musical))
          (= 1 (ly:item-break-dir col)))))

{
  \mark \default
  R1
  \mark \default
  R1
  \break
  \mark \default
  R1
}

\markup "2. RIGHT rehearsal mark positioning (at beginning of line):"
\markup \vspace #1

{
  \override Score.RehearsalMark.self-alignment-X = #(lambda (grob)
     (let ((beginning? (at-line-beginning? grob)))
       (if beginning? RIGHT 0)))
  \override Score.RehearsalMark.color = #(lambda (grob)
     (let ((beginning? (at-line-beginning? grob)))
       (if beginning? red blue)))
  \mark \default
  R1
  \mark \default
  R1
  \break
  \mark \default
  R1
}

\markup "3. CENTER rehearsal mark positioning (at beginning of line):"
\markup \vspace #1

{
  \override Score.RehearsalMark.self-alignment-X = #(lambda (grob)
     (let ((beginning? (at-line-beginning? grob)))
       (if beginning? CENTER 0)))
  \override Score.RehearsalMark.color = #(lambda (grob)
     (let ((beginning? (at-line-beginning? grob)))
       (if beginning? red blue)))
  \mark \default
  R1
  \mark \default
  R1
  \break
  \mark \default
  R1
}

\markup "4. LEFT rehearsal mark positioning (at beginning of line):"
\markup \vspace #1

{
  \override Score.RehearsalMark.self-alignment-X = #(lambda (grob)
     (let ((beginning? (at-line-beginning? grob)))
       (if beginning? LEFT 0)))
  \override Score.RehearsalMark.color = #(lambda (grob)
     (let ((beginning? (at-line-beginning? grob)))
       (if beginning? red blue)))
  \mark \default
  R1
  \mark \default
  R1
  \break
  \mark \default
  R1
}
