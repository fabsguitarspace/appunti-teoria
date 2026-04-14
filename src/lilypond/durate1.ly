\version "2.24.4"

\header {
  tagline = ##f 
}


\paper {
  indent = 0
}


\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\score {
    \new Staff {
        \clef treble
        \relative c' {
            c1^\markup { "Semibreve" } 
            c2^\markup { "Minime" } c2 % minime
            c4^\markup { "Semiminime" } c4 c4 c4 % semiminime
            \break
            c8^\markup { "Crome" } c8 c8 c8 c8 c8 c8 c8 % crome
            c16^\markup { "Semicrome" } c16 c16 c16 c16 c16 c16 c16 c16 c16 c16 c16 c16 c16 c16 c16 % semicrome
            \break
            \tuplet 3/2 { c8^\markup { "Terzina base" } c c } \tuplet 3/2 { c c c } \tuplet 3/2 { c c c } \tuplet 3/2 { c c c }
            \tuplet 3/2 { c4^\markup { "Terzina di semiminime" } c c } \tuplet 3/2 { c c c } 
            \break
            \tuplet 6/4 { c16^\markup { "Sestine" } c c c c c } \tuplet 6/4 { c16 c c c c c } \tuplet 6/4 { c16 c c c c c } \tuplet 6/4 { c16 c c c c c }
        }
    }
}
