\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}



accordi = \chordmode {
   c1:m7+.9
}


triadi = \relative c' {
  \omit Staff.TimeSignature

  <c ef g b d>1
}


\score {
  <<
    \new ChordNames {
      \accordi
    }
    
    
    \new Staff {
      \triadi
    }
  >>
  \layout { }
  \midi { }
}



