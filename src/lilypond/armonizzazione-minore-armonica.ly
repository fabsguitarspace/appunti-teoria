\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


accordi = \chordmode {
  c1:m7+
  d1:m7.5-
  ef1:maj7.5+
  f1:m7
  g1:7
  af1:maj
  b1:dim7
}



note = \relative c' {
  \clef treble
  \omit Staff.TimeSignature

  <c ef g b>1
  <d f af c>1
  <ef g b d>1
  <f af c ef>1
  <g b d f>1
  <af c ef g>1
  <b d f af>1
}

testo = \lyricmode {
  "ImΔ" "II∅" "♭IIIΔ♯5" "IVm7" "V7" "♭VIΔ" "VII°7"
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