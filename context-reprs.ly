\version "2.25.7"
\include "library.ily"
\include "stylesheet.ily"

\markup "File: context-reprs.ly"
\markup \vspace #2

\markup \code \verbatim-file #"context-reprs-1.ily"
\markup \vspace #1

\include "context-reprs-1.ily"

\markup \console-output \column
{
  "#<Context Score=Score (#<Context StaffGroup=Strings"
  "    (#<Context Staff=Viola (#<Context Voice=Music () >) >"
  "     #<Context Staff=Cello (#<Context Voice () >) >) >) >"
  "#<Context StaffGroup=Strings"
  "    (#<Context Staff=Viola (#<Context Voice=Music () >) >"
  "     #<Context Staff=Cello (#<Context Voice () >) >) >"
  "#<Context Staff=Viola (#<Context Voice=Music () >) >"
  "#<Context Voice=Music () >"
}

\markup \vspace #3

\markup \code \verbatim-file #"context-reprs-2.ily"
\markup \vspace #1

\include "context-reprs-2.ily"

\markup \console-output \column
{
  "#<Context Score (#<Context StaffGroup (#<Context Staff (#<Context Voice () >) >) >) >"
  "#<Context StaffGroup (#<Context Staff (#<Context Voice () >) >) >"
  "#<Context Staff (#<Context Voice () >) >"
  "#<Context Voice () >"
}
