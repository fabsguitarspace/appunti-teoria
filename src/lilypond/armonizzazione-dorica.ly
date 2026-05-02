\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


accordi = \chordmode {
  c1:m7
  d1:m7
  ef1:maj7
  f1:7
  g1:m7
  a1:m7.5-
  bf1:maj7
}



note = \relative c' {
  \clef treble
  \omit Staff.TimeSignature

  <c ef g bf>1
  <d f a c>1
  <ef g bf d>1
  <f a c ef>1
  <g bf d f>1
  <a c ef g>1
  <bf d f a>1
}

testo = \lyricmode {
  "Im7" "IIm7" "♭IIIΔ" "IVm7" "Vm7" "VI∅" "♭VIIΔ"
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