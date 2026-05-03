\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
 c2:maj7
 e2:m7
 f2:m7
 bf2:7
 c2:maj7
}


musica = \relative c' {
     \omit Staff.TimeSignature
         \omit Score.BarNumber

  <c e g b>2
  <e g b d>2


\once\override HorizontalBracketText.text = "Interscambio modale"
  <f af c ef>2\startGroup
  <bf, d f af>2\stopGroup
  <c e g b>1
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

	indent = 0
  \context {

    \Voice
    \consists "Horizontal_bracket_engraver"
    \override HorizontalBracket.direction = #DOWN
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/40)
  }
}
  \midi {}
}