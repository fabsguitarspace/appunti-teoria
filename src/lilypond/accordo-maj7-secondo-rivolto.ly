\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:maj/g
}


triadi = \relative c' {
  \omit Staff.TimeSignature

  <g' b c e>1
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
}



