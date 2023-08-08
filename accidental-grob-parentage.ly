\version "2.25.7"
\language "english"

\markup { Example: \bold "accidental-grob-parentage.ly" }
\markup \vspace #2

get-parentage = #(
    lambda (accidental)
    (ly:message "")
    (let* ((accidental-placement (ly:grob-parent accidental 0))
           (paper-column (ly:grob-parent accidental-placement 0))
           (system (ly:grob-parent paper-column 0)))
        (ly:message "(grob::name accidental): ~s" (grob::name accidental))
        (ly:message "(ly:grob-parent accidental 0): ~s" (ly:grob-parent accidental 0))
        (ly:message
          "(ly:grob-parent accidental-placement 0): ~s"
          (ly:grob-parent accidental-placement 0))
        (ly:message
          "(ly:grob-parent paper-column 0): ~s"
          (ly:grob-parent paper-column 0))
        (ly:message "(ly:grob-parent system 0): ~s" (ly:grob-parent system 0))
    )
    (ly:message "")
    (let* ((note-head (ly:grob-parent accidental 1))
           (note-column (ly:grob-parent note-head 1))
           (vertical-axis-group (ly:grob-parent note-column 1))
           (vertical-alignment (ly:grob-parent vertical-axis-group 1))
           (system (ly:grob-parent vertical-alignment 1))
           )
        (ly:message "(grob::name accidental): ~s" (grob::name accidental))
        (ly:message "(ly:grob-parent accidental 1): ~s" (ly:grob-parent accidental 1))
        (ly:message "(ly:grob-parent note-head 1): ~s" (ly:grob-parent note-head 1))
        (ly:message "(ly:grob-parent note-column 1): ~s" (ly:grob-parent note-column 1))
        (ly:message
          "(ly:grob-parent vertical-axis-group 1): ~s"
          (ly:grob-parent vertical-axis-group 1))
        (ly:message
         "(ly:grob-parent vertical-alignment 1): ~s"
         (ly:grob-parent vertical-alignment 1))
        (ly:message "(ly:grob-parent system 1): ~s" (ly:grob-parent system 1))
    )
    (ly:message "")
    )

{
  \once \override Accidental.after-line-breaking = #get-parentage
  cs'4
}

\markup \typewriter \smaller \smaller \smaller \with-color #blue \column {
  "(grob::name accidental): Accidental"
  \null
  "(ly:grob-parent accidental 0): #<Grob AccidentalPlacement >"
  "(ly:grob-parent accidental-placement 0): #<Grob PaperColumn >"
  "(ly:grob-parent paper-column 0): #<Grob System >"
  "(ly:grob-parent system 0): ()"
  \null
  "(ly:grob-parent accidental 1): #<Grob NoteHead >"
  "(ly:grob-parent note-head 1): #<Grob NoteColumn >"
  "(ly:grob-parent note-column 1): #<Grob VerticalAxisGroup >"
  "(ly:grob-parent vertical-axis-group 1): #<Grob VerticalAlignment >"
  "(ly:grob-parent vertical-alignment 1): #<Grob System >"
  "(ly:grob-parent system 1): ()"
}
