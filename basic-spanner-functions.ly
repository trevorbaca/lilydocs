\version "2.25.7"

\layout { indent = 0 ragged-right = ##t }

\markup { Example: basic-spanner-functions.ly. }
\markup \vspace #1

print-spanner-properties = #(
    lambda (grob)
    (ly:message "")
    (ly:message "(grob::name grob): ~s" (grob::name grob))
    (ly:message "(ly:grob? grob): ~s" (ly:grob? grob))
    (ly:message "(ly:spanner? grob): ~s" (ly:spanner? grob))
    (ly:message "(ly:item? grob): ~s" (ly:item? grob))
    (ly:message "(ly:spanner-bound grob -1): ~s" (ly:spanner-bound grob -1))
    (ly:message "(ly:spanner-bound grob 1): ~s" (ly:spanner-bound grob 1))
    (ly:message "(ly:spanner-broken-neighbor grob -1): ~s"
      (ly:spanner-broken-neighbor grob -1))
    (ly:message "(ly:spanner-broken-neighbor grob 1): ~s"
      (ly:spanner-broken-neighbor grob 1))
    (ly:message "(first-broken-spanner? grob): ~s" (first-broken-spanner? grob))
    (ly:message "(middle-broken-spanner? grob): ~s" (middle-broken-spanner? grob))
    (ly:message "(end-broken-spanner? grob): ~s" (end-broken-spanner? grob))
    (ly:message "(not-first-broken-spanner? grob): ~s" (not-first-broken-spanner? grob))
    (ly:message "(not-last-broken-spanner? grob): ~s" (not-last-broken-spanner? grob))
    (ly:message "(unbroken-or-first-broken-spanner? grob): ~s"
      (unbroken-or-first-broken-spanner? grob))
    (ly:message "(unbroken-or-last-broken-spanner? grob): ~s"
      (unbroken-or-last-broken-spanner? grob))
    (ly:message "(unbroken-spanner? grob): ~s" (unbroken-spanner? grob))
    )

{
  \override TupletBracket.after-line-breaking = #print-spanner-properties
  \times 2/3 { c'2 d' e' }
}


{
  \override Score.BarNumber.transparent = ##t
  \override TupletBracket.after-line-breaking = #print-spanner-properties
  \times 8/10 { c'4 d' e' f' g' \break a' b' c'' d'' e'' }
}
