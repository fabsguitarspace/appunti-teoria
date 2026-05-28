\version "2.26.0"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c2:7+
  f2:7+
  e2:m7
  a2:m7
  af2:m7
  df2:7
  gf1:7+
}

ritmo = \relative c' {
   \omit Staff.TimeSignature

  \improvisationOn
  \omit Stem

  b'4_"C:"^"IΔ" 4 4^"IVΔ" 4
  4^"IIIm7" 4 4^"VIm7" 4 
  4_"G♭:"^"IIm7" 4 4^"V7" 4
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