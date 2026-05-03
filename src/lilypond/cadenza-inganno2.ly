\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
  g1:7 
  a1:m7
}


musica = \relative c' {
   \omit Staff.TimeSignature
  <g' b d f>1
  <a c e g>1
}


testo = \lyricmode {
  "V7" "VIm7" 
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