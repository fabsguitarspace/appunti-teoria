\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}



accordi = \chordmode {
  \set additionalPitchPrefix = "add"
  <c ef g d'>    % add9
}


triadi = \relative c' {
  \omit Staff.TimeSignature

  <c ef g d'>1
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
  \midi {
  }
}



