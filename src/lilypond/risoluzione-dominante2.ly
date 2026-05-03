\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
  ef1:7 af1:m7
}


musica = \relative c' {
   \omit Staff.TimeSignature
  <ef g df'>1
  <af, gf' cf>1
}


testo = \lyricmode {
  "V7" "Im7" 
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