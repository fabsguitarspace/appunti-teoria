\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


accordi = \chordmode {
  c1:m7
  d1:m7.5-
  ef1:maj
  f1:m7
  g1:m7
  af1:maj
  bf1:7
}



note = \relative c' {
  \clef treble
  \omit Staff.TimeSignature

  <c ef g bf>1
  <d f af c>1
  <ef g bf d>1
  <f af c ef>1
  <g bf d f>1
  <af c ef g>1
  <bf d f af>1
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