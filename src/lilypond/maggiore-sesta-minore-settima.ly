\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:6
  c1:6/a
  a1:m7
}


triadi = \relative c' {
  \omit Staff.TimeSignature

  <c e g a>1
  <a' c e g>1
  <a c e g>1
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
\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}
}



