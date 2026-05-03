\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
 f1:m7
 c1:maj7
 bf1:7
 c1:maj7
 af1:maj7
 g1:7
}


musica = \relative c' {
     \omit Staff.TimeSignature
  <f \tweak color #red af c ef>1
  <c e \tweak color #blue g b>1
    \bar "||" 
  <bf  d f \tweak color #red af>1
  <c e \tweak color #blue g b>1
    \bar "||" 
  <\tweak color #red af' c ef g>1
  <\tweak color #blue g b d f>1
}


testo = \lyricmode {
  "IVm7" "IΔ" 
  "♭VII7" "IΔ" 
  "♭VIΔ" "V7" 
}


\score {
  <<
    \new ChordNames {
      \accordi
    }

    \new Staff {
      \musica
    }
  \addlyrics {
      \testo
    }
  >>
\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}
  \midi {}
}