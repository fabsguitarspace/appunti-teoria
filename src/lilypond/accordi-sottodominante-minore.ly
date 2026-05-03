\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
 f1:m7
 bf1:7
 af1:maj7
 d1:m7.5-
df1:maj7
}


musica = \relative c' {
     \omit Staff.TimeSignature
  <f af c ef>1
    \bar "||" 
  <bf  d f  af>1
    \bar "||" 
  <af c ef g>1
      \bar "||" 
  <d,  f af  c>1
      \bar "||" 
  <df  f af  c>1
      \bar "||" 

}


testo = \lyricmode {
  "IVm7" 
  "♭VII7" 
  "♭VIΔ"
  "II∅"
  "♭IIΔ"

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