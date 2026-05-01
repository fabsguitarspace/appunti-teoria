\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:6
  c1:7
  c1:maj7
  c1:m6
  c1:m7
  c1:m7.5-
  c1:dim7
}



triadi = \relative c' {
  \omit Staff.TimeSignature

  <c e g a>1
  <c e g bf>1
  <c e g b>1
  <c ef g a>1
  <c ef g bf>1
  <c ef gf bf>1
  <c ef gf bff>1
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



