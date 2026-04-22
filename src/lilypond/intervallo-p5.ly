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
  
    c2 g'2    
    <c, g'>1
  }
  \layout { }
  \midi { } 
}

