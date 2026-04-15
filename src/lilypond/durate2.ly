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

        r1^\markup { "Semibreve" } 
        r2^\markup { "Minime" } r2 % minime
        r4^\markup { "Semiminime" } r4 r4 r4 % semiminime
        \break
        r8^\markup { "Crome" } r8 r8 r8 r8 r8 r8 r8 % crome
        r16^\markup { "Semicrome" } r16 r16 r16 r16 r16 r16 r16 r16 r16 r16 r16 r16 r16 r16 r16 % semicrome
        \break
        \tuplet 3/2 { r8^\markup { "Terzina base" } r r } \tuplet 3/2 { r r r } \tuplet 3/2 { r r r } \tuplet 3/2 { r r r }
        \tuplet 3/2 { r4^\markup { "Terzina di semiminime" } r r } \tuplet 3/2 { r r r } 
        \break
        \tuplet 6/4 { r16^\markup { "Sestine" } r r r r r } \tuplet 6/4 { r16 r r r r r } \tuplet 6/4 { r16 r r r r r } \tuplet 6/4 { r16 r r r r r }

    }
}
