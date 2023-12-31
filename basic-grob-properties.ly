\version "2.25.7"

\layout { indent = 0 ragged-right = ##t }

{
  \once \override Staff.Clef.color = #
    (lambda (grob)
      (ly:message "")
      (ly:message "(ly:grob? grob)")
      (ly:message "~s" (ly:grob? grob))
      (ly:message "")

      (ly:message "(ly:grob-array? grob)")
      (ly:message "~s" (ly:grob-array? grob))
      (ly:message "")

      (ly:message "(ly:grob-default-font grob)")
      (ly:message "~s" (ly:grob-default-font grob))
      (ly:message "")

      (ly:message "(ly:grob-extent grob grob 0)")
      (ly:message "~s" (ly:grob-extent grob grob 0))
      (ly:message "")

      (ly:message "(ly:grob-extent grob grob 1)")
      (ly:message "~s" (ly:grob-extent grob grob 1))
      (ly:message "")

      (ly:message "(ly:grob-get-vertical-axis-group-index grob)")
      (ly:message "~s" (ly:grob-get-vertical-axis-group-index grob))
      (ly:message "")

      (ly:message "(ly:grob-interfaces grob)")
      (ly:message "~s" (ly:grob-interfaces grob))
      (ly:message "")

      (ly:message "(ly:grob-layout grob)")
      (ly:message "~s" (ly:grob-layout grob))
      (ly:message "")

      (ly:message "(ly:grob-original grob)")
      (ly:message "~s" (ly:grob-original grob))
      (ly:message "")

      (ly:message "(ly:grob-parent grob 0)")
      (ly:message "~s" (ly:grob-parent grob 0))
      (ly:message "")

      (ly:message "(ly:grob-parent grob 1)")
      (ly:message "~s" (ly:grob-parent grob 1))
      (ly:message "")

      (ly:message "(ly:grob-property grob 'break-align-symbol)")
      (ly:message "~s" (ly:grob-property grob 'break-align-symbol))
      (ly:message "")

      (ly:message "(ly:grob-property grob 'break-visibility)")
      (ly:message "~s" (ly:grob-property grob 'break-visibility))
      (ly:message "")

      (ly:message "(ly:grob-property grob 'non-musical)")
      (ly:message "~s" (ly:grob-property grob 'non-musical))
      (ly:message "")

      (ly:message "(ly:grob-property grob 'X-extent)")
      (ly:message "~s" (ly:grob-property grob 'X-extent))
      (ly:message "")

      (ly:message "(ly:grob-property grob 'Y-extent)")
      (ly:message "~s" (ly:grob-property grob 'Y-extent))
      (ly:message "")

      (ly:message "(ly:grob-relative-coordinate grob grob 0)")
      (ly:message "~s" (ly:grob-relative-coordinate grob grob 0))
      (ly:message "")

      (ly:message "(ly:grob-relative-coordinate grob grob 1)")
      (ly:message "~s" (ly:grob-relative-coordinate grob grob 1))
      (ly:message "")

      (ly:message "(ly:grob-robust-relative-extent grob grob 0)")
      (ly:message "~s" (ly:grob-robust-relative-extent grob grob 0))
      (ly:message "")

      (ly:message "(ly:grob-robust-relative-extent grob grob 1)")
      (ly:message "~s" (ly:grob-robust-relative-extent grob grob 1))
      (ly:message "")

      (ly:message "(ly:grob-spanned-column-rank-interval grob)")
      (ly:message "~s" (ly:grob-spanned-column-rank-interval grob))
      (ly:message "")

      (ly:message "(ly:grob-staff-position grob)")
      (ly:message "~s" (ly:grob-staff-position grob))
      (ly:message "")

      (ly:message "(ly:grob-system grob)")
      (ly:message "~s" (ly:grob-system grob))
      (ly:message "")

      (ly:message "")
      (ly:message "")

      (ly:message "(grob::name grob)")
      (ly:message "~s" (grob::name grob))
      (ly:message "")

      (ly:message "(grob::rhythmic-location grob)")
      (ly:message "~s" (grob::rhythmic-location grob))
      (ly:message "")

      (ly:message "(grob::when grob)")
      (ly:message "~s" (grob::when grob))
      (ly:message "")

      (ly:message "(grob::display-objects grob)")
      (ly:message "")
      (grob::display-objects grob)

      green
      )
  c'4
}
