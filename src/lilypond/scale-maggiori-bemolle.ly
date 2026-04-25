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
  
    f1^"Fa maggiore" g1 a1 bf1 c1 d1 e1
    \break
    bf1^"Si♭ maggiore" c1 d1 ef1 f1 g1 a1 
    \break
    ef,1^"Mi♭ maggiore" f1 g1 af1 bf1 c1 d1 
    \break
    af1^"La♭ maggiore" bf1 c1 df1 ef1 f1 g1
    \break
    df,1^"Re♭ maggiore" ef1 f1 gf1 af1 bf1 c1
    \break
    gf1^"Sol♭ maggiore" af1 bf1 cf1 df1 ef1 f1
  }
  \layout { 
      indent = #0
  }
}

