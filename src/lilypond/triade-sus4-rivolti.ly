\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}

accordi = \chordmode {
  c1:sus4
  c1:sus4/f
  c1:sus4/g
}



triadi = \relative c' {
  \omit Staff.TimeSignature

  <c f g>1
  <f g c>1
  <g c f>1
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



