# Audit dei file musicali non referenziati

Data: 2026-11-08. Analisi statica dei sorgenti locali; nessun file eliminato.

## Metodo e limiti

Esaminati RST, configurazioni Python e CSS sotto `src/docs`; risolti riferimenti locali espliciti e wildcard di immagini. Un riferimento immagine `nome.*` copre PDF/SVG/immagini, non rende automaticamente utilizzato un MP3. Per i `.ly`, utilizzo editoriale inferito da output omonimi referenziati nelle pagine, anche SVG, e propagato transitivamente tramite `\include`. Gli script di build compilano tutti i sorgenti: essere compilato non equivale a essere richiamato nei contenuti.

La relazione sorgente→output omonimo è una convenzione dei progetti, non una prova per output personalizzati o multipli. Non analizzati utilizzi esterni, storia Git o riferimenti creati dinamicamente. Non referenziato non significa eliminabile: alcuni esempi possono essere riservati a sviluppi futuri. I PDF sono conservativamente considerati utilizzati anche se la wildcard in HTML seleziona uno SVG.

Sono esclusi `out`, `.venv`, `.git` e `Docs`: il perimetro dei file candidati è `src`.

## Riepilogo

| Tipo | Totale | Non referenziati nel percorso editoriale |
|---|---:|---:|
| `.mp3` | 125 | 6 |
| `.pdf` | 139 | 1 |
| `.ly` | 141 | 2 |

## File .mp3 non referenziati

- `src/docs/_static/music/accordo-maj7-fondamentale.mp3`
- `src/docs/_static/music/accordo-maj7-primo-rivolto.mp3`
- `src/docs/_static/music/accordo-maj7-secondo-rivolto.mp3`
- `src/docs/_static/music/accordo-maj7-terzo-rivolto.mp3`
- `src/docs/_static/music/cadenza-sottodominante-minore.mp3`
- `src/docs/_static/music/scale-maggiori-bemolle.mp3`

## File .pdf non referenziati

- `src/docs/_static/music/cadenza-sottodominante-minore.pdf`

## File .ly non referenziati

- `src/lilypond/cadenza-sottodominante-minore.ly`
- `src/lilypond/include/my-scales.ly`

## Evidenze dei riferimenti

Il file JSON allegato contiene, per ogni candidato, i riferimenti rilevati e la classificazione. Per i `.ly` è distinto il raggiungimento dai contenuti dalla sola presenza di un include.
