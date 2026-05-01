\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1
  c1:m
  c1:dim
  c1:aug
}



triadi = \relative c' {
  \omit Staff.TimeSignature

  <c e g>1
  <c ef g>1
  <c ef gf>1
  <c e gs>1
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



