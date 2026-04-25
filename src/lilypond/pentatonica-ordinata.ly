\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


\score {
  \relative c' {
    \clef treble
    \omit Staff.TimeSignature
    \omit Score.BarNumber
    \omit Score.BarLine

    c1_"C" d1_"D" e1_"E" g1_"G"  a1_"A" 
  }
  \layout { 
      indent = #0
  }
}

