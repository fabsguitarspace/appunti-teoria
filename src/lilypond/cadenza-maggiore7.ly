\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}
accordi = \chordmode {
  af1:maj df1:maj7 c1:maj7
}


musica = \relative c' {
   \omit Staff.TimeSignature
  <af' c ef g>1
  <df, f af c>1
  <c e g b>1
}


testo = \lyricmode {
  "♭VIΔ7" "♭IIΔ7" "IΔ" 
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