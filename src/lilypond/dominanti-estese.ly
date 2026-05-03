\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
 c1:maj7
 b1:7
 e1:7
}


musica = \relative c' {
     \omit Staff.TimeSignature
  <c e g b>1
  <b ds fs a>1
  <e gs b d>1_\markup { "Accordo cromatico" }
}


testo = \lyricmode {
  "IΔ" "VII7" "III7"
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