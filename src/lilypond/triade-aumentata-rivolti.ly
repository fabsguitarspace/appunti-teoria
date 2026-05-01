\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:aug
  c1:aug/e
  c1:aug/gs
}



triadi = \relative c' {
  \omit Staff.TimeSignature

  <c e gs>1
  <e gs c>1
  <gs c e>1
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
    \tempo 4 = 80
  } 
}



