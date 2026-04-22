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
  
    c2 af'2    
    <c, af'>1
  }
  \layout { }
  \midi { } 
}

