\version "2.25.3"

\paper { indent = 0 tagline = ##f }

% if-else
{
  \once \override Glissando.color = 
    #(lambda (grob) (if (= 0 (ly:grob-property grob 'glissando-index)) red blue))
  <g c>2
  \glissando
  <a d>2
}

% enchained conditions
{
  \once \override Glissando.color = 
    #(lambda (grob) 
      (if (= 0 (ly:grob-property grob 'glissando-index)) cyan 
      (if (= 1 (ly:grob-property grob 'glissando-index)) green
      (if (= 2 (ly:grob-property grob 'glissando-index)) red))))
  <g c>2
  \glissando
  <a d>2
}

% test dash fraction; set color
{
  \once \override TextSpanner.color =
    #(lambda (grob) (if (= 0.25 (ly:grob-property grob 'dash-fraction)) red blue))
  c'1
  - \tweak dash-fraction 0.25
  - \tweak bound-details.left.text "foo"
  \startTextSpan
  c'1
  \stopTextSpan
}

% test color; set thickness
{
  \once \override TextSpanner.thickness =
    #(lambda (grob) (if (equal? red (ly:grob-property grob 'color)) 6))
  c'1
  - \tweak color #red
  \startTextSpan
  c'1
  \stopTextSpan
}
