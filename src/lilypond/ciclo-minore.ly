\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


accordi = \chordmode {
  a1:m7
  d1:7
  g1:maj7
  c1:maj7
  fs1:m7.5-
  b1:7
  e1:m7
  e1:m6
}



note = \relative c' {
  \clef treble
  \omit Staff.TimeSignature

  <a c e g>1
  <d fs a c>1
  <g b d fs>1
  <c, e g b>1
  <fs a c e>1
  <b, ds fs a>1
  <e g b d>1
  <e g b cf>1
}

\score {
  <<
    \new ChordNames {
      \accordi
    }

    \new Staff {
      \note
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