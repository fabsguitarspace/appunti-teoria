\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:sus2
  c1:sus2/d
  c1:sus2/g
}



triadi = \relative c' {
  \omit Staff.TimeSignature

  <c d g>1
  <d g c>1
  <g c d>1
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
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/30)
    }
  }
  \midi { 
    \tempo 4 = 80
  } 
}



