\version "2.24.4"
\language "english"
\paper {
  indent = 0
  ragged-right = ##f
  tagline = ##f
}

\layout {
  \context {
    \Score
    \omit BarNumber
    \omit Staff.TimeSignature
  }
}

cMaj = \relative c' {
  \key c \major
  \cadenzaOn
  c4^\markup \bold "Scala di C maggiore" d e f g a b c
}

aMin = \relative c' {
  \key c \major
  \cadenzaOn
  a4^\markup \bold "A minore (relativa)" b c d e f g a
}

cMin = \relative c' {
  \key c \minor
  \cadenzaOn
  c4^\markup \bold "C minore (parallela)" d ef f g af bf c
}

\score {
  \new Staff {
    \time 4/4


    \cMaj
    \bar "||"


    \aMin
    \bar "||"


    \cMin
    \bar "|."
  }

  \layout { }
   \midi { }

}