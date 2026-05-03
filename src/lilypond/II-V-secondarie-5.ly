\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
 e2:m7
 a2:7
 d1:m7
 fs2:m7.5-
 b2:7
 e1:m7
 g2:m7
 c2:7
 f1:maj7
 a2:m7
 d2:7
 g1:7
 b2:m7.5-
 e2:7
 a1:m7
}


musica = \relative c' {
     \omit Staff.TimeSignature
         \omit Score.BarNumber

\once\override HorizontalBracketText.text = "II-V/II"
  <e g b d>2\startGroup
  <a cs e g>2\stopGroup
  <d, f a c>1
  \bar "||" \break
\once\override HorizontalBracketText.text = "II-V/II"
  <fs a c e>2\startGroup
  <b ds fs a>2\stopGroup
  <e, g b d>1
    \bar "||" \break
  \once\override HorizontalBracketText.text = "II-V/II"
  <g bf d f>2\startGroup
  <c, e g bf>2\stopGroup
  <f a c e>1
    \bar "||" \break
  \once\override HorizontalBracketText.text = "II-V/II"
  <a c e g>2\startGroup
  <d, fs a c>2\stopGroup
  <g b d f>1
    \bar "||" \break
  \once\override HorizontalBracketText.text = "II-V/II"
  <b, d f a>2\startGroup
  <e gs b d>2\stopGroup
  <a c e g>1
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
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}
  \midi {}
}