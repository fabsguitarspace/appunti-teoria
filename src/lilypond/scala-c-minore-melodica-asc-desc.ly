\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


melodia = \relative c' {
  \clef treble
  \omit Staff.TimeSignature

  c d ef f g a b 
  c bf af g f ef d c2
}

testo = \lyricmode {
  I II ♭III IV V VI VII
  VIII ♭VII ♭VI V IV ♭III II I
}

\score {
  <<
    \new Staff {
      \melodia
    }
    \addlyrics {
      \testo
    }
  >>
\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
  }
}
  \midi {}
}