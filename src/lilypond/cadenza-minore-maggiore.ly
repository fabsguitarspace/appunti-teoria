\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
  d1:m7.5- g1:7.9- c1:maj7
}


musica = \relative c' {
   \omit Staff.TimeSignature
  <d f af c>1
  <d f af b>1
  <c e g b>1
}


testo = \lyricmode {
  "II∅" "V7♭9" "IΔ" 
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