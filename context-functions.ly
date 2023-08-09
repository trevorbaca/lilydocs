\version "2.25.7"
\include "library.ily"
\include "stylesheet.ily"

\markup { File: \bold \typewriter context-functions.ly }
\markup \vspace #1

\markup "LilyPond's 21 context functions:"
\markup \vspace #1

\markup \translate #'(2 . 0) \code \column
{
  "ly:context-current-moment"
  "ly:context-def?"
  "ly:context-def-lookup"
  "ly:context-def-modify"
  "ly:context-event-source"
  "ly:context-events-below"
  "ly:context-find"
  "ly:context-grob-definition"
  "ly:context-id"
  "ly:context-matched-pop-property"
  "ly:context-mod?"
  "ly:context-mod-apply!"
  "ly:context-name"
  "ly:context-output-def"
  "ly:context-parent"
  "ly:context-property"
  "ly:context-property-where-defined"
  "ly:context-pushpop-property"
  "ly:context-schedule-moment"
  "ly:context-set-property!"
  "ly:context-unset-property"
}

\markup \vspace #2

\markup { Function: \bold \typewriter "ly:context-current-moment" }
\markup \vspace #1

display-current-moment = \applyContext #(lambda (context)
  (newline)
  (ly:message "~s" (ly:context-current-moment context))
  (newline)
)

{
  \display-current-moment
  c'4
  \display-current-moment
}

\pageBreak

\markup { Function: \bold \typewriter "ly:context-find" }
\markup { Function: \bold \typewriter "ly:context-parent" }
\markup { Function: \bold \typewriter "ly:context-property" }
\markup \vspace #1

\markup \code \verbatim-file #"context-functions-1.ily"
\markup \vspace #1

\include "context-functions-1.ily"

\markup \console-output \column
{
  "#t"
  "#<procedure robust-bar-number-function (barnum measure-pos alt-number context)>"
  "#t"
  \null
  "#<Context Voice=Music () >"
  "#<Context Staff=Viola (#<Context Voice=Music () >) >"
  "#<Context Score=Score (#<Context Staff=Viola (#<Context Voice=Music () >) >) >"
  \null
  "#<Context Voice=Music () >"
  "#<Context Staff=Viola (#<Context Voice=Music () >) >"
  "#<Context Score=TheScore (#<Context Staff=Viola (#<Context Voice=Music () >) >) >"
}

\pageBreak

\markup { Function: \bold \typewriter "ly:context-set-property!" }
\markup \vspace #1

\markup \code \verbatim-file #"context-property-set.ily"
\markup \vspace #1

\include "context-property-set.ily"
