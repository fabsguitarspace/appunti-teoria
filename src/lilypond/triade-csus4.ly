\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:sus4
  c1
}



triadi = \relative c' {
  \omit Staff.TimeSignature

  <c g' f'>1
  <c g' e'>1
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



