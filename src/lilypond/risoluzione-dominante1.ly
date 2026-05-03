\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
  d1:7 g1:maj7
}


musica = \relative c' {
   \omit Staff.TimeSignature
  <d fs c'>1
  <g, fs' b>1
}


testo = \lyricmode {
  "V7" "IΔ" 
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