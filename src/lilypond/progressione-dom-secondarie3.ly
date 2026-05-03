\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
  c1:maj7 d1:7 d1:m7 g1:7 
}


musica = \relative c' {
   \omit Staff.TimeSignature
    \repeat volta 2 {
\bar ".|:"
  <c e g b>1
  <d fs a c>1
  <d f a c>1
  <g b d f>1
}
}


testo = \lyricmode {
  "IΔ"  "V7/V" "IIm7" "V7"
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