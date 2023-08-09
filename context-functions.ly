\version "2.25.7"
\include "library.ily"
\include "stylesheet.ily"

\markup "File: context-functions.ly"
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
