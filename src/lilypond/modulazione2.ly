\version "2.24.4"

\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:7+
  b2:m7
  e2:7
  a2:m7
  d2:7
  g1:7+
}

ritmo = \relative c' {
   \omit Staff.TimeSignature

  \improvisationOn
  \omit Stem

  b'4_"C:"^"IΔ" 4 4 4
  4_"G:"^"IIIm7" 4 4^"VI7" 4
  4^"IIm7" 4 4^"V7" 4
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