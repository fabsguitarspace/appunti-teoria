\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}



accordi = \chordmode {
   c1:7.9-.13-
}


triadi = \relative c' {
  \omit Staff.TimeSignature

  <c e g bf df af'>1
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



