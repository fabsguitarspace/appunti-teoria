# Analisi — Riscrittura dei passaggi con voce da manuale tradotto

- Data: 2026-11-13
- Stato: implementato su richiesta dell'utente («riscrivi da zero»).
- Ambito e richiesta: la revisione editoriale dell'11 novembre 2026 ha segnalato nei capitoli 6–8 lunghi passaggi con lessico e struttura da manuale chord-scale tradotto dall'inglese (una nota del traduttore, «ndt.», e una prima persona di un altro autore, poi rimosse). La fonte non è stata identificata; l'utente ha scelto di riscrivere i passaggi da zero.

## Problema e risultato atteso

Ridurre il rischio di copyright e uniformare la voce: riscrivere con parole ed esempi propri i passaggi interessati, conservando i concetti (che non sono tutelabili), gli spartiti LilyPond, gli audio e le tabelle.

## Interventi

| Capitolo | Passaggi riscritti |
|---|---|
| `6-armonia-funzionale.rst` | numeri romani e riquadro iniziale (da «memorizza» a un esercizio d'ascolto); tutta la sezione Cadenze (dominante, sottodominante, inganno, composta, I–VI–II–V); tonalità minore: introduzione, relativa e parallela, come riconoscere la tonica, armonizzazione parallela, centro tonale e nascita della minore armonica, frigia dominante, modi della minore armonica, accordi atipici, tonica minore e colore dorico |
| `7-armonia-cromatica.rst` | introduzione; movimento di dominante; dominanti secondarie ed estese; dominanti in caduta; cinque dominanti secondarie e progressioni d'esempio; «Take the A Train»; dominanti e modulazione; IIm7 introduttivi; II–V secondari; sigle 7♯11/7♭5 dei sostituti; interscambio modale; sottodominante minore e dominante minore; le tre cadenze di sottodominante minore |
| `8-armonia-diminuita.rst` | introduzione; due tritoni e scale dei diminuiti; cinque funzioni di passaggio; quattro fondamentali; diminuito di colore; ritardo di risoluzione; riarmonizzazione con V7♭9 e II∅–V7♭9; riarmonizzazione del ♭III°7 e «Stella by Starlight» |

Non sono stati toccati: le sezioni già scritte con la voce del volume (aree tonali, tonicizzazione, tritono, dominante funzionale e non funzionale, metodo di Barry Harris, semidiminuito come m6), le tabelle dei modi e gli esempi musicali. Ogni esempio citato nel testo nuovo è stato confrontato con il rispettivo sorgente LilyPond (accordi e ordine).

Il progetto fratello è stato trattato nello stesso modo: in `appunti-pratica/src/docs/1-introduzione.rst` sono state riscritte la sezione «Iniziamo bene: un patto con te stesso» (le «tre T» e l'esortazione finale) e il blocco «Studia in modo consapevole».

## Verifica

Build HTML con `-W` di entrambi i volumi riuscita; test di Pratica OK. Correttezza musicale degli esempi verificata a mano (note dei tritoni, sostituti di tritono, risoluzioni, riarmonizzazioni). La riscrittura non è stata confrontata con una fonte, perché la fonte non è nota.

## Punti aperti

- Il riquadro «Lettura a posteriori» proposto dalla revisione per i capitoli 6–8 non è stato aggiunto: la riscrittura attenua già il tono prescrittivo, ma la cornice esplicita resta da valutare.
