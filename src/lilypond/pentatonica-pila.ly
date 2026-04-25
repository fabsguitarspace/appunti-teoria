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

    c1_"C" g'1_"G" d'1_"D" a'1_"A" e'1_"E"
  }
  \layout { 
      indent = #0
  }
}

