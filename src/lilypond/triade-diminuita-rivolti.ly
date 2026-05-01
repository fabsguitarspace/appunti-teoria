\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:dim
  c1:dim/ef
  c1:dim/gf
}



triadi = \relative c' {
  \omit Staff.TimeSignature

  <c ef gf>1
  <ef gf c>1
  <gf c ef>1
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



