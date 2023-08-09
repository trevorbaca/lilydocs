\new Score = "Score" {
  \new Staff = "Viola" {
    \new Voice = "Music" {
      \set tupletFullLength = ##t
      \context Voice \applyContext #(lambda (context)
        (ly:message "~s" (ly:context-property context 'autoBeaming))
        (ly:message "~s" (ly:context-property context 'barNumberFormatter))
        (ly:message "~s" (ly:context-property context 'tupletFullLength))
        (newline)
        (ly:message "~s" context)
        (ly:message "~s" (ly:context-parent context))
        (ly:message "~s" (ly:context-parent (ly:context-parent context)))
        (newline)
        (ly:message "~s" (ly:context-find context 'Voice))
        (ly:message "~s" (ly:context-find context 'Staff))
        (ly:message "~s" (ly:context-find context 'Score))
        (newline)
      )
      c'4
    }
  }
}
