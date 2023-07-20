%{
SUMMARY: TextSpanner.to-barline = ##t appears extremely useful.

1. to-barline = ##t may be the only way to make end-of-system spanners work correctly;
   compare the middle two examples (in red) below.

2. to-barline = ##t may be a better way of handling middle-of-system spanners
   than what's happening now.
%}
\version "2.25.3"

\paper { indent = 0 tagline = ##f }

\markup "TextSpanner.to-barline = ##f:"

\markup \vspace #1

{
    c'1
    - \tweak bound-details.left.stencil-align-dir-y #center
    - \tweak bound-details.left.text \markup \upright "foo  "
    - \tweak bound-details.left-broken.text ##f
    - \tweak bound-details.right.stencil-align-dir-y #up
    - \tweak bound-details.right.text \markup { \draw-line #'(0 . -1) }
    - \tweak bound-details.right-broken.padding 0
    - \tweak bound-details.right-broken.text ##f
    - \tweak dash-fraction 0.25
    - \tweak dash-period 1.5
    % - \tweak to-barline ##t
    \startTextSpan
    d'
    \stopTextSpan
    e'
    \break
    f'
    g'
    a'
}


{
    c'1
    - \tweak bound-details.left.stencil-align-dir-y #center
    - \tweak bound-details.left.text \markup \upright "foo  "
    - \tweak bound-details.left-broken.text ##f
    - \tweak bound-details.right.stencil-align-dir-y #up
    - \tweak bound-details.right.text \markup { \draw-line #'(0 . -1) }
    - \tweak bound-details.right-broken.padding 0
    - \tweak bound-details.right-broken.text ##f
    - \tweak color #red
    - \tweak dash-fraction 0.25
    - \tweak dash-period 1.5
    % - \tweak to-barline ##t
    \startTextSpan
    d'
    e'
    \break
    f'
    \stopTextSpan
    g'
    a'
}


{
    c'1
    - \tweak bound-details.left.stencil-align-dir-y #center
    - \tweak bound-details.left.text \markup \upright "foo  "
    - \tweak bound-details.left-broken.text ##f
    - \tweak bound-details.right.stencil-align-dir-y #up
    - \tweak bound-details.right.text \markup { \draw-line #'(0 . -1) }
    - \tweak bound-details.right-broken.padding 0
    - \tweak bound-details.right-broken.text ##f
    - \tweak dash-fraction 0.25
    - \tweak dash-period 1.5
    % - \tweak to-barline ##t
    \startTextSpan
    d'
    e'
    \break
    f'
    g'
    \stopTextSpan
    a'
}

\markup "TextSpanner.to-barline = ##t:"

\markup \vspace #1

{
    c'1
    - \tweak bound-details.left.stencil-align-dir-y #center
    - \tweak bound-details.left.text \markup \upright "foo  "
    - \tweak bound-details.left-broken.text ##f
    - \tweak bound-details.right.stencil-align-dir-y #up
    - \tweak bound-details.right.text \markup { \draw-line #'(0 . -1) }
    - \tweak bound-details.right-broken.padding 0
    - \tweak bound-details.right-broken.text ##f
    - \tweak dash-fraction 0.25
    - \tweak dash-period 1.5
    - \tweak to-barline ##t
    \startTextSpan
    d'
    \stopTextSpan
    e'
    \break
    f'
    g'
    a'
}


{
    c'1
    - \tweak bound-details.left.stencil-align-dir-y #center
    - \tweak bound-details.left.text \markup \upright "foo  "
    - \tweak bound-details.left-broken.text ##f
    - \tweak bound-details.right.stencil-align-dir-y #up
    - \tweak bound-details.right.text \markup { \draw-line #'(0 . -1) }
    - \tweak bound-details.right-broken.padding 0
    - \tweak bound-details.right-broken.text ##f
    - \tweak color #red
    - \tweak dash-fraction 0.25
    - \tweak dash-period 1.5
    - \tweak to-barline ##t
    \startTextSpan
    d'
    e'
    \break
    f'
    \stopTextSpan
    g'
    a'
}


{
    c'1
    - \tweak bound-details.left.stencil-align-dir-y #center
    - \tweak bound-details.left.text \markup \upright "foo  "
    - \tweak bound-details.left-broken.text ##f
    - \tweak bound-details.right.stencil-align-dir-y #up
    - \tweak bound-details.right.text \markup { \draw-line #'(0 . -1) }
    - \tweak bound-details.right-broken.padding 0
    - \tweak bound-details.right-broken.text ##f
    - \tweak dash-fraction 0.25
    - \tweak dash-period 1.5
    - \tweak to-barline ##t
    \startTextSpan
    d'
    e'
    \break
    f'
    g'
    \stopTextSpan
    a'
}
