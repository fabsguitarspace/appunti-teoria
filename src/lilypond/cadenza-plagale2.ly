\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
  f1:maj7 
  c1:maj7
}


musica = \relative c' {
   \omit Staff.TimeSignature
  <f a c e>1
  <c e g b>1
}


testo = \lyricmode {
  "IVΔ" "IΔ" 
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