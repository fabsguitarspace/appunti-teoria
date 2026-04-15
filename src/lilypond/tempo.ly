\version "2.24.4"

\header {
  tagline = ##f 
}

\paper {
  indent = 0
}


\score {
  \new Staff {
    \relative c'' {
 % Stile predefinito
  \time 4/4
  \repeat unfold 4 { c4 } |
  \time 2/2 
  \repeat unfold 2 { c2 } |
  % Passaggio allo stile numerico
  \numericTimeSignature
  \time 4/4 
  \repeat unfold 4 { c4 } |
  \time 2/2 
  \repeat unfold 2 { c2 } |
  \time 3/4 
  \repeat unfold 3 { c4 } |
  \time 6/8 
  \repeat unfold 6 { c8 } |
    }
    }
}