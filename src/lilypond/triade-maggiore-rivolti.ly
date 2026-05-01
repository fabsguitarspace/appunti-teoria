\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1
  c1/e
  c1/g
}



triadi = \relative c' {
  \omit Staff.TimeSignature

  <c e g>1
  <e g c>1
  <g c e>1
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



