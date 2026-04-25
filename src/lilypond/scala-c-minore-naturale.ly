\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


melodia = \relative c' {
  \clef treble
  \omit Staff.TimeSignature

  c d ef f g af bf r
}

testo = \lyricmode {
  "1" "2" "♭3" "4" "5" "♭6" "♭7"
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