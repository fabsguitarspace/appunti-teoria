\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}



accordi = \chordmode {
   c1:maj7.11+
}


triadi = \relative c' {
  \omit Staff.TimeSignature
    \set chordNameExceptions = #sequential-music-to-chord-exceptions {}

  <c e g b fs'>1
}


\score {
  <<
    \new ChordNames {
      \accordi
    }
    
    
    \new Staff {
      \triadi
    }
  >>
  \layout { }
  \midi { }
}



