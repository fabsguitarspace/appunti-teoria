\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}



accordi = \chordmode {
   c1:m11
}


triadi = \relative c' {
  \omit Staff.TimeSignature

  <c ef g bf f'>1
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



