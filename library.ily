#(define-markup-command (code layout props text) (markup?)
  "Style code input."
  (interpret-markup layout props
    #{
      \markup
      \typewriter
      \smaller
      \smaller
      \smaller
      #text
    #}))

#(define-markup-command (console-output layout props text) (markup?)
  "Style console output."
  (interpret-markup layout props
    #{
      \markup
      \typewriter
      \smaller
      \smaller
      \smaller
      \with-color #blue
      #text
    #}))
