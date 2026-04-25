\version "2.24.4"
\language "english"
\header {
	tagline = ##f
	indent = 0
}


\score {
  \relative c' {
    \clef treble
    \omit Staff.TimeSignature
    \omit Score.BarNumber
    \omit Score.BarLine
  
    g'1^"G maggiore" a1 b1 c1 d1 e1 fs1
    \break
    d,1^"D maggiore" e1 fs1 g1 a1 b1 cs1
    \break
    a1^"A maggiore" b1 cs1 d1 e1 fs1 gs1
    \break
    e,1^"E maggiore" fs1 gs1 a1 b1 cs1 ds1
    \break
    b1^"B maggiore" cs1 ds1 e1 fs1 gs1 as1
    \break
    fs,1^"F♯ maggiore" gs1 as1 b1 cs1 ds1 es1
  }
  \layout { 
      indent = #0
  }
}

