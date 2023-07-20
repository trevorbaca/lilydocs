\version "2.25.3"

\paper { indent = 0 tagline = ##f }

#(ly:basic-progress "~%Top of file ...")

\markuplist \column-lines {
  "LilyPond's console messaging functions appear to be these seven:"
  " "
  "ly:basic-progress"
  "ly:debug"
  "ly:message"
  "ly:programming-error"
  "ly:progress"
  "ly:warning"
  "ly:warning-located"
  " "
}

{
  #(ly:basic-progress "Inside music ...")
  \once \override Staff.Clef.color =
    #(lambda (grob)
      (ly:basic-progress "~%Inside lambda ...")
      (ly:basic-progress (format #f "The value of grob is ~s ...~%" grob))
      (if (equal? LEFT (ly:item-break-dir grob)) red blue)
      )
  c'1 d' e' f'
}

#(ly:basic-progress "Bottom of file ...~%")

\markuplist \column-lines {
  "Output messaging from this file:"
  " "
  "GNU LilyPond 2.25.3 (running Guile 2.2)"
  "Processing `docs-basic-progress.ly'"
  "Parsing..."
  " "
  "Top of file ..."
  "Inside music ..."
  "Bottom of file ..."
  " "
  "Interpreting music..."
  "Preprocessing graphical objects..."
  "Finding the ideal number of pages..."
  "Fitting music on 1 page..."
  "Drawing systems..."
  " "
  "Inside lambda ..."
  "The value of grob is #<Grob Clef > ..."
  " "
  "Layout output to `docs-basic-progress.pdf'..."
  "Success: compilation successfully completed"
}
