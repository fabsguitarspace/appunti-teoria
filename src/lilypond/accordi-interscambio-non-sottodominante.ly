\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
 c1:m7
 c1:m6
 ef1:maj7
 g1:m7
bf1:maj7
}


musica = \relative c' {
     \omit Staff.TimeSignature
  <c ef g bf>1
    \bar "||" 
  <c ef g a>1
    \bar "||" 
  <ef g bf d>1
      \bar "||" 
  <g bf d f>1
      \bar "||" 
  <bf d f a>1
      \bar "||" 

}


testo = \lyricmode {
  "Im7" 
  "Im6" 
  "♭IIIΔ" 
  "Vm7"
  "♭VIIΔ" 

}


\score {
  <<
    \new ChordNames {
      \accordi
    }

    \new Staff {
      \musica
    }
  \addlyrics {
      \testo
    }
  >>
\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}
  \midi {}
}