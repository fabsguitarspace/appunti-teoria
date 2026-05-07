\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
  c1:6 d:dim7 c:6/e d:dim7/f c:6/g d:dim7/af 
  c:6/a d:dim7/b
}


musica = \relative c' {
   \omit Staff.TimeSignature
  <c e g a>1
  <d f af b>1
   <e g a c>1
  <f af b d>1
  \break
   <g a c e>1
  <af b d f>1
  <a c e g>1
  <b d f af>1
  \bar "|."
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
    \Score
  }
}
  \midi {}
}