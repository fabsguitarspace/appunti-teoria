# Analisi — Chiusura dei punti della revisione editoriale

- Data: 2026-11-13
- Stato: implementato su richiesta dell'utente («fai tutto»), dopo la verifica della revisione editoriale dell'11 novembre 2026.
- Ambito e richiesta: completare i punti rimasti aperti della revisione nei due volumi. Questa nota copre Teoria; la parte di Pratica è in `../appunti-pratica/Docs/analisi/021-chiusura-revisione-editoriale.md`.

## Interventi in Teoria

| Punto della revisione | Intervento |
|---|---|
| Coerenza con la prefazione | Riquadro `lettura-a-posteriori` all'inizio del capitolo 6, richiamato nei capitoli 7 e 8: le associazioni scala-accordo sono descrizioni di un suono già ascoltato, non istruzioni. |
| Autoverifica | Sezione «Verifica» con 4–5 domande e soluzioni alla fine dei capitoli 3–9. |
| Capitoli sottili | Capitolo 9: direzioni di modulazione frequenti negli standard, catene di II–V, esercizio d'ascolto. Capitolo 11: ciclo minore, blues jazz, II–V d'inganno. |
| Capitolo 13 senza notazione | Accanto a ogni analisi lo spartito dell'esercizio di Pratica commentato. Sono copie di SVG/PDF da `appunti-pratica/src/docs/_static/music/autori-*.{svg,pdf}` in `src/docs/_static/pratica/`, fuori da `_static/music` per non interferire con la pipeline musicale. Vanno ricopiate se Pratica rigenera quegli esercizi. |
| Glossario | Nuova pagina `src/docs/glossario.rst` (direttiva `glossary`, 44 voci con rimandi ai capitoli), ultima nel toctree; collegata dall'introduzione di Pratica. |
| Engagement | Riquadro «Prima di leggere» (un ascolto e una prova da fare subito) all'inizio dei capitoli 2–10 e 12. Sezione «Una cellula da seguire» nell'introduzione e riquadri «Cellula guida» nei capitoli 3–6 sul gruppo Mi–Sol–Si–Re, già usato nei capitoli 10 e 12 e in Pratica. |

Gli ascolti citati sono incisioni note e verificabili (So What, Over the Rainbow, Maria, Peace Piece, Autumn Leaves, Take the A Train, Stella by Starlight, Giant Steps, Maiden Voyage, Take Five); non sono indicati minutaggi.

## Verifica

Build HTML con `-W` riuscita dopo ogni passo. Le soluzioni delle domande e gli esempi dei nuovi percorsi sono stati controllati a mano.

## Punti aperti

- L'ordine dei capitoli 10, 12, 13, 11 resta invariato per conservare gli URL pubblicati (decisione dell'utente, 13 novembre 2026).
- Le copie in `_static/pratica` non hanno un controllo automatico di allineamento con Pratica.
