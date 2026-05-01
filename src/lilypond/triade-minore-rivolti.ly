\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:m
  c1:m/ef
  c1:m/g
}



triadi = \relative c' {
  \omit Staff.TimeSignature

  <c ef g>1
  <ef g c>1
  <g c ef>1
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



