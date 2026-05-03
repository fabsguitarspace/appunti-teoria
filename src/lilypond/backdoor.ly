\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
  f1:m7 bf1:7 c1:maj7
}


musica = \relative c' {
   \omit Staff.TimeSignature
  <f af c ef>1
  <bf, d f af>1
  <c e g b>1
}


testo = \lyricmode {
  "IVm7" "♭VII7" "IΔ" 
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