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
  
    c2 ef2    
    <c ef>1
  }
  \layout { }
  \midi { } 
}

