\new Score = "Score" {
  \new StaffGroup = "Strings" <<
    \new Staff = "Viola" {
      \new Voice = "Music" {
        \context Score \applyContext #(lambda (context) (ly:message "~s" context))
        \context StaffGroup \applyContext #(lambda (context) (ly:message "~s" context))
        \context Staff \applyContext #(lambda (context) (ly:message "~s" context))
        \context Voice \applyContext #(lambda (context) (ly:message "~s" context))
        c'4
      }
    }
    \new Staff = "Cello" { c'4 }
  >>
}
