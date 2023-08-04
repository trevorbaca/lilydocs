\version "2.25.7"

\layout { indent = 0 ragged-right = ##t }

{
  \once \override TupletBracket.color = #
    (lambda (grob)
      (ly:message "")

      (ly:message "(ly:grob? grob)")
      (ly:message "~s" (ly:grob? grob))
      (ly:message "")

      (ly:message "(ly:spanner? grob)")
      (ly:message "~s" (ly:spanner? grob))
      (ly:message "")

      (ly:message "(ly:spanner-bound grob -1)")
      (ly:message "~s" (ly:spanner-bound grob -1))
      (ly:message "")

      (ly:message "(ly:spanner-bound grob 1)")
      (ly:message "~s" (ly:spanner-bound grob 1))
      (ly:message "")

      (ly:message "(ly:spanner-broken-into grob)")
      (ly:message "~s" (ly:spanner-broken-into grob))
      (ly:message "")

      (ly:message "(ly:spanner-broken-neighbor grob -1)")
      (ly:message "~s" (ly:spanner-broken-neighbor grob -1))
      (ly:message "")

      (ly:message "(ly:spanner-broken-neighbor grob 1)")
      (ly:message "~s" (ly:spanner-broken-neighbor grob 1))
      (ly:message "")

      green
      )
  \times 2/3 { c'2 d' e' }
}


{
  \once \override TupletBracket.color = #
    (lambda (grob)
      (ly:message "")

      (ly:message "(ly:grob? grob)")
      (ly:message "~s" (ly:grob? grob))
      (ly:message "")

      (ly:message "(ly:spanner? grob)")
      (ly:message "~s" (ly:spanner? grob))
      (ly:message "")

      (ly:message "(ly:spanner-bound grob -1)")
      (ly:message "~s" (ly:spanner-bound grob -1))
      (ly:message "")

      (ly:message "(ly:spanner-bound grob 1)")
      (ly:message "~s" (ly:spanner-bound grob 1))
      (ly:message "")

      (ly:message "(ly:spanner-broken-into grob)")
      (ly:message "~s" (ly:spanner-broken-into grob))
      (ly:message "")

      (ly:message "(ly:spanner-broken-neighbor grob -1)")
      (ly:message "~s" (ly:spanner-broken-neighbor grob -1))
      (ly:message "")

      (ly:message "(ly:spanner-broken-neighbor grob 1)")
      (ly:message "~s" (ly:spanner-broken-neighbor grob 1))
      (ly:message "")

      blue
      )
  \times 8/10 { c'4 d' e' f' g' \break a' b' c'' d'' e'' }
}
