\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


accordi = \chordmode {
  c1:m7+
  d1:m7
  ef1:maj7.5+
  f1:7
  g1:7
  a1:m7.5-
  b1:m7.5-
}



note = \relative c' {
  \clef treble
  \omit Staff.TimeSignature

  <c ef g b>1
  <d f a c>1
  <ef g b d>1
  <f a c ef>1
  <g b d f>1
  <a c ef g>1
  <b d f a>1
}

testo = \lyricmode {
  "ImΔ" "IIm7" "♭IIIΔ♯5" "IV7" "V7" "VI∅" "VII∅"
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