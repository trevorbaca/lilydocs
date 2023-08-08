\version "2.25.7"
\language "english"

\markup { Example: \bold "clef-grob-parentage.ly" }
\markup \vspace #2

get-parentage = #(
    lambda (clef)
    (newline)
    (ly:message "(grob::name clef): ~s" (grob::name clef))
    (newline)
    (let* ((break-align-group (ly:grob-parent clef 0))
           (break-alignment (ly:grob-parent break-align-group 0))
           (non-musical-paper-column (ly:grob-parent break-alignment 0))
           (system (ly:grob-parent non-musical-paper-column 0))
           )
        (ly:message
         "(ly:grob-parent clef 0): ~s"
         (ly:grob-parent clef 0))
        (ly:message
         "(ly:grob-parent break-align-group 0): ~s"
         (ly:grob-parent break-align-group 0))
        (ly:message
         "(ly:grob-parent break-alignment 0): ~s"
         (ly:grob-parent break-alignment 0))
        (ly:message
         "(ly:grob-parent non-musical-paper-column 0): ~s"
         (ly:grob-parent non-musical-paper-column 0))
        (ly:message
         "(ly:grob-parent system 0): ~s"
         (ly:grob-parent system 0))
    )
    (newline)
    (let* ((vertical-axis-group (ly:grob-parent clef 1))
           (vertical-alignment (ly:grob-parent vertical-axis-group 1))
           (system (ly:grob-parent vertical-alignment 1))
           )
        (ly:message
         "(ly:grob-parent clef 1): ~s"
         (ly:grob-parent clef 1))
        (ly:message
          "(ly:grob-parent vertical-axis-group 1): ~s"
          (ly:grob-parent vertical-axis-group 1))
        (ly:message
          "(ly:grob-parent vertical-alignment 1): ~s"
          (ly:grob-parent vertical-alignment 1))
        (ly:message
         "(ly:grob-parent system 1): ~s"
         (ly:grob-parent system 1))
        )
    (newline)
    )

{
  \once \override Staff.Clef.after-line-breaking = #get-parentage
  c'4
}

\markup \typewriter \smaller \smaller \smaller \with-color #blue \column {
  "(grob::name clef): Clef"
  \null
  "(ly:grob-parent clef 0): #<Grob BreakAlignGroup >"
  "(ly:grob-parent break-align-group 0): #<Grob BreakAlignment >"
  "(ly:grob-parent break-alignment 0): #<Grob NonMusicalPaperColumn >"
  "(ly:grob-parent non-musical-paper-column 0): #<Grob System >"
  "(ly:grob-parent system 0): ()"
  \null
  "(ly:grob-parent clef 1): #<Grob VerticalAxisGroup >"
  "(ly:grob-parent vertical-axis-group 1): #<Grob VerticalAlignment >"
  "(ly:grob-parent vertical-alignment 1): #<Grob System >"
  "(ly:grob-parent system 1): ()"
}
