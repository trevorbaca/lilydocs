\new Score {
  \new StaffGroup {
    \new Staff {
      \new Voice {
        \context Score \applyContext #(lambda (context) (ly:message "~s" context))
        \context StaffGroup \applyContext #(lambda (context) (ly:message "~s" context))
        \context Staff \applyContext #(lambda (context) (ly:message "~s" context))
        \context Voice \applyContext #(lambda (context) (ly:message "~s" context))
        c'4
      }
    }
  }
}
