\version "2.26.0"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  d2:m7
  g2:7
  c1:7+
  fs2:m7
  b2:7
    e1:7+
}

ritmo = \relative c' {
   \omit Staff.TimeSignature

  \improvisationOn
  \omit Stem

  b'4_"C:"^"IIm7" 4 4^"V7" 4
  4^"IΔ" 4 4 4
  4_"E:"^"IIm7" 4 4^"V7" 4
  4^"IΔ" 4 4 4 
}

\score {
  <<
    \new ChordNames {
      \accordi
    }

    \new Staff {
      \ritmo
    }
  >>
}