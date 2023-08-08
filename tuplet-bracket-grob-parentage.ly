\version "2.25.7"
\language "english"

\markup { Example: \bold "tuplet-bracket-grob-parentage.ly" }
\markup \vspace #2

get-parentage = #(
    lambda (tuplet-bracket)
    (ly:message "")
    (ly:message "(grob::name tuplet-bracket): ~s" (grob::name tuplet-bracket))
    (ly:message "")
    (let* ((note-column (ly:grob-parent tuplet-bracket 0))
           (paper-column (ly:grob-parent note-column 0))
           (system (ly:grob-parent paper-column 0))
           )
        (ly:message
         "(ly:grob-parent tuplet-bracket 0): ~s"
         (ly:grob-parent tuplet-bracket 0))
        (ly:message
          "(ly:grob-parent note-column 0): ~s"
          (ly:grob-parent note-column 0))
        (ly:message
          "(ly:grob-parent paper-column 0): ~s"
          (ly:grob-parent paper-column 0))
        (ly:message "(ly:grob-parent system 0): ~s" (ly:grob-parent system 0))
    )
    (ly:message "")
    (let* ((vertical-axis-group (ly:grob-parent tuplet-bracket 1))
           (vertical-alignment (ly:grob-parent vertical-axis-group 1))
           (system (ly:grob-parent vertical-alignment 1))
           )
        (ly:message
         "(ly:grob-parent tuplet-bracket 1): ~s"
         (ly:grob-parent tuplet-bracket 1))
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
  \once \override TupletBracket.after-line-breaking = #get-parentage
  \times 2/3 { c'2 d' e' }
}

\markup \typewriter \smaller \smaller \smaller \with-color #blue \column {
  "(grob::name tuplet-bracket): TupletBracket"
  \null
  "(ly:grob-parent tuplet-bracket 0): #<Grob NoteColumn >"
  "(ly:grob-parent note-column 0): #<Grob PaperColumn >"
  "(ly:grob-parent paper-column 0): #<Grob System >"
  "(ly:grob-parent system 0): ()"
  \null
  "(ly:grob-parent tuplet-bracket 1): #<Grob VerticalAxisGroup >"
  "(ly:grob-parent vertical-axis-group 1): #<Grob VerticalAlignment >"
  "(ly:grob-parent vertical-alignment 1): #<Grob System >"
  "(ly:grob-parent system 1): ()"
}
