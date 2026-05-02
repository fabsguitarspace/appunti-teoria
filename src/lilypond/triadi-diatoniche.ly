\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


accordi = \chordmode {
  c1
  d1:m
  e1:m
  f1
  g1
  a1:m
  b1:dim
}



note = \relative c' {
  \clef treble
  \omit Staff.TimeSignature

  <c e g>1
  <d f a>1
  <e g b>1
  <f a c>1
  <g b d>1
  <a c e>1
  <b d f>1
}

testo = \lyricmode {
  "I" "IIm" "IIIm" "IV" "V" "VIm" "VII∅" 
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