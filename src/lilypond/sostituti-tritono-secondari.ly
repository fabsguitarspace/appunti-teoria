\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
 df1:7
 c1:maj7
 ef1:7
 d1:m7
 f1:7
 e1:m7
 gf1:7
 f1:maj7
 af1:7
 g1:7
 bf1:7
 a1:m7
}


musica = \relative c' {
     \omit Staff.TimeSignature
         \omit Score.BarNumber
   <df f af cf>1
  <c e g b>1
  \bar "||" \break

  <ef g bf df>1
  <d f a c>1
  \bar "||" \break
  <f a c ef>1
  <e g b d>1
    \bar "||" \break
  <c e g bf>1
  <f a c e>1
    \bar "||" \break
  <af c ef gf>1
  <g b d f>1
    \bar "||" \break
  <bf d f af>1
  <a c e g>1
}


testo = \lyricmode {
"SubV" "IΔ"
"SubV/II" "IIm7"
"SubV/III" "IIIm7"
"SubV/IV" "IVΔ"
"SubV/V" "V7"
"SubV/VI" "VIm7"

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

	indent = 0
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/20)
  }
}
  \midi {}
}