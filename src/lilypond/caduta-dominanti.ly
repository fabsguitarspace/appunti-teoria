\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
 c1:7
 f1:7
 bf1:7
 ef1:7
 af1:7
 df1:7
 fs1:7
 b1:7
 e1:7
 a1:7
 d1:7
 g1:7
}


musica = \relative c' {
     \omit Staff.TimeSignature
  <c e g bf>1
  <f a c ef>1
  <bf, d f af>1
  <ef g bf df>1
  <af c ef gf>1
  <df, f af cf>1
  <fs as cs e>1
  <b, ds fs a>1
  <e gs b d>1
  <a cs e g>1
  <d, fs a c>1
  <g b d f>1
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
  }
}
  \midi {}
}