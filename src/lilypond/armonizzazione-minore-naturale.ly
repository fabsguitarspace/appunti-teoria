\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


accordi = \chordmode {
  a1:m7
  b1:m7.5-
  c1:maj
  d1:m7
  e1:m7
  f1:maj
  g1:7
}



note = \relative c' {
  \clef treble
  \omit Staff.TimeSignature

  <a c e g>1
  <b d f a>1
  <c e g b>1
  <d f a c>1
  <e g b d>1
  <f a c e>1
  <g b d f>1
}

testo = \lyricmode {
  "Im7" "II∅" "♭IIIΔ" "IVm7" "Vm7" "♭VIΔ" "♭VII7"
}

\score {
  <<
    \new ChordNames {
      \accordi
    }

    \new Staff {
      \note
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