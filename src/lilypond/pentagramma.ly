\version "2.24.4"

\include "include/my-chart.ly"


\score {
  \new Staff {
    \clef treble
    \omit Staff.TimeSignature
    \cadenzaOn
    s1
    \bar "|"
  }
}