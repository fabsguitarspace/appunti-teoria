\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:maj/e
}


triadi = \relative c' {
  \omit Staff.TimeSignature

  <e g b c>1
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



