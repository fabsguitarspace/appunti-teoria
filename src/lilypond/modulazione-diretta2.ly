\version "2.26.0"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:7+
 c2:m7
  f2:7
  bf1:7+
  bf2:m7
  ef2:7
    af1:7+
}

ritmo = \relative c' {
   \omit Staff.TimeSignature

  \improvisationOn
  \omit Stem

  b'4_"C:"^"IΔ" 4 4 4
  4_"B♭:"^"IIm7" 4 4^"V7" 4
  4^"IΔ" 4 4 4 
  4_"A♭:"^"IIm7" 4 4^"V7" 4
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