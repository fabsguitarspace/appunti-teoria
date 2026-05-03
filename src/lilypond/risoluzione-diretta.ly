\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
  g2:m7 c2:7
  f2:m7 bf2:7
  ef2:m7 af2:7
}


musica = \relative c' {
   \omit Staff.TimeSignature

  <g' bf d f>2
  <c, e g bf>2
  <f af c ef>2
  <bf, d f af>2
  <ef gf bf df>2
  <af c ef gf>2
}



\score {
  <<
    \new ChordNames {
      \accordi
    }

    \new Staff {
      \musica
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