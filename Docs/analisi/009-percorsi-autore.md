# Ascoltare e analizzare i percorsi d'autore

Data: 10 novembre 2026. L'utente ha chiesto di completare i dieci percorsi proposti e di fare commit/push al termine.

## Contenuti

Nuovo `src/docs/13-percorsi-autore.rst`, dopo ritmo e prima delle letture conclusive nell'indice, preservando gli URL esistenti. Dieci sezioni: Django Reinhardt, Charlie Christian, Wes Montgomery, Jim Hall, Pat Metheny, Joe Pass, George Benson, Pat Martino, John Scofield e John McLaughlin. Ogni sezione sviluppa un'analisi di note/intervalli o organizzazione ritmica, una prova di confronto e rimandi ai capitoli teorici pertinenti e al percorso operativo di Pratica.

Le analisi riguardano esercizi originali, distinti dagli ascolti del repertorio. Il volume Pratica comprende 20 ascolti guidati, 60 esercizi/studi con notazione/TAB/audio e dieci basi finali. Non si attribuiscono le frasi originali agli artisti e non si riduce l'intera carriera a un solo tratto. I capitoli armonia funzionale, armonia non funzionale e ritmo rimandano al nuovo capitolo.

## Fonti e manutenzione

La fonte editoriale canonica è in Pratica: `scripts/artist_profiles.py` e `scripts/generate_artist_studies.py`. `scripts/generate_artist_paths.py` genera le pagine di entrambi i progetti, compreso il capitolo 13 di Teoria. Eseguirlo dalla copia di Pratica con i due repository affiancati; aggiornare i dati editoriali alla fonte prima di rigenerare. Nessun nuovo file musicale è duplicato in Teoria: gli esempi operativi sono collegati alle pagine di Pratica, dove risiedono gli ascolti e i lettori audio.

Discografie e cataloghi di riferimento: Legacy per Django/Christian, Concord per Montgomery/Pass/Martino, Blue Note e sito ufficiale per Hall, ECM e sito ufficiale per Metheny, Rhino e NEA per Benson, Blue Note e sito ufficiale per Scofield, racconto/discografia di McLaughlin e lezioni di Martino su TrueFire. I link dettagliati sono nelle rispettive pagine operative.

## Verifiche

Entrambe le build HTML riuscite con avvisi trattati come errori; verificati le destinazioni e gli identificatori dei rimandi fra i libri sugli output locali. Nel progetto canonico sono state verificate note, durate, swing, voci e basi, renderizzate e controllate le 60 partiture e decodificati i 70 audio senza rilevare clipping. Evidenze e istruzioni complete in `../appunti-pratica/Docs/analisi/016-percorsi-autore.md`.

I nuovi URL pubblici diventano disponibili dopo la pubblicazione. La verifica non comprende l'intero PDF/ePub del libro; gli audio didattici non riproducono espressività o timbro degli artisti.
