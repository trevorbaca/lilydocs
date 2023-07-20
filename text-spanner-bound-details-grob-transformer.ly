\version "2.25.6"

\paper { indent = 0 tagline = ##f }

\markuplist \column-lines {
    "TextSpanner.bound-details.text.left = \"red\" when spanner color is red;"
    "TextSpanner.bound-details.text.left = \"other\" when spanner color is not red:"
    " "
}

{
  \override TextSpanner.bound-details =
    #(grob-transformer
      'bound-details
      (lambda (grob orig)
        (assoc-set! (alist-copy orig)
                    'left
                    (assoc-set! (alist-copy (assoc-ref orig 'left))
                                'text
                                (if (equal? red (ly:grob-property grob 'color))
                                    "red" "other")))))
  c'1
  - \tweak color #red
  \startTextSpan
  d'1
  e'1
  \stopTextSpan
  f'1
  - \tweak color #blue
  \startTextSpan
  g'1
  a'1
  \stopTextSpan
}
