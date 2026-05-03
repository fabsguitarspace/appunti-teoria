\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
 a1:7
 d1:m7
 b1:7
 e1:m7
 c1:7
 f1:maj7
 d1:7
 g1:7
 e1:7
 a1:m7
}


musica = \relative c' {
     \omit Staff.TimeSignature
         \omit Score.BarNumber
 
  <a' cs e g>1
  <d, f a c>1
  \bar "||" \break
  <b' ds fs a>1
  <e, g b d>1
    \bar "||" \break
  <c e g bf>1
  <f a c e>1
    \bar "||" \break
  <d fs a c>1
  <g b d f>1
    \bar "||" \break
  <e gs b d>1
  <a c e g>1
}


testo = \lyricmode {
"V7/II" "IIm7"
"V7/III" "IIIm7"
"V7/IV" "IVΔ"
"V7/V" "V7"
"V7/VI" "VIm7"

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