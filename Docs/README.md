# KB ARCHITECT — Appunti di Teoria

Aggiornamento: 10 novembre 2026. Questa KB descrive i sorgenti presenti; non certifica lo stato dei siti pubblicati.

## Modalità di lavoro

Leggere questa pagina e [architettura](architettura.md) prima di proporre interventi. In modalità ARCHITECT produrre analisi, mappe di dipendenze, alternative e ADR dentro `Docs`. La scrittura assistita e la possibile ristrutturazione dei contenuti sono state richieste esplicitamente dall’utente. Nella fase ARCHITECT elaborare prima struttura e obiettivi; passare alla redazione nel perimetro concordato. Una proposta non equivale a una decisione approvata.

Per ogni richiesta: chiarire problema e risultato atteso; rileggere i sorgenti coinvolti; distinguere fatti, inferenze e punti aperti; valutare impatto su entrambi i progetti; documentare opzioni e criteri di verifica. Usare il [modello di analisi](analisi/TEMPLATE.md) e il [modello ADR](adr/TEMPLATE.md).

## Identità e perimetro

Percorso concettuale: notazione, intervalli, scale, accordi, armonia funzionale, cromatica e diminuita, modulazione e armonia non funzionale. Il capitolo scale interpreta il cromatismo attraverso contesto, direzione e risoluzione.

Il progetto fratello è `../appunti-pratica`. Teoria spiega strutture e relazioni; Pratica le applica alla tastiera. Questa distinzione è una lettura del materiale, non una decisione storica documentata. Prima di spostare contenuti verificare prerequisiti, duplicazioni utili e collegamenti tra i due percorsi.

## Mappa dei capitoli

- `src/docs/1-introduzione.rst`: Introduzione
- `src/docs/2-prima-delle-note.rst`: Prima ancora delle note
- `src/docs/3-intervalli.rst`: Intervalli
- `src/docs/4-scale.rst`: Scale
- `src/docs/5-accordi.rst`: Accordi
- `src/docs/6-armonia-funzionale.rst`: Armonia funzionale
- `src/docs/7-armonia-cromatica.rst`: Armonia cromatica
- `src/docs/8-armonia-diminuita.rst`: Armonia diminuita
- `src/docs/9-modulazione.rst`: Modulazione
- `src/docs/10-armonia-non-funzionale.rst`: Armonia non funzionale

## Gestione delle decisioni

Le scelte storiche osservate nei sorgenti non sono considerate approvate retroattivamente. Per nuove decisioni usare `adr/NNNN-titolo.md`, numero progressivo libero, stato iniziale Proposto. Stati: Proposto, Accettato, Respinto, Superato. Registrare autore della decisione e data quando disponibili; non inventarli. Un ADR superato resta consultabile e rimanda al successore.

## Manutenzione

I sorgenti prevalgono sulla KB. Dopo cambiamenti rilevanti aggiornare evidenze e data; verificare sempre percorsi e riferimenti prima di riutilizzare una conclusione. `Docs` è distinta da `src/docs` e non entra nella build Sphinx corrente.

## Analisi disponibili

- [Pipeline musicale: dipendenze, aggiornamento e alternative](analisi/001-pipeline-musicale.md) — analisi congiunta dei due repository; raccomandazioni da decidere.

- [Rigenerazione controllata: prima misura](analisi/002-rigenerazione-controllata.md) — risultati delle fasi eseguibili e limiti.

## ADR disponibili

- [ADR 0001 — LilyPond diretto e generazione Python](adr/0001-lilypond-diretto-e-generazione-python.md) — Accettato, 2026-11-08.

- [ADR 0004 — Libreria musicale comune ai tre progetti](adr/0004-libreria-musicale-comune.md) — Accettato, 2026-11-11. Copia comune con appunti-repertorio e il progetto fratello; migrazione non avviata. I numeri 0002–0003 sono usati solo in appunti-repertorio.

- [Ristrutturazione editoriale e scrittura assistita](analisi/003-ristrutturazione-editoriale.md) — proposta aperta; i capitoli mancanti sono ipotesi.

- [Ripristino della build Sphinx](analisi/004-ripristino-build-sphinx.md) — modifiche e verifiche eseguite.

- [Correzioni pipeline musicale e ritaglio PDF](analisi/005-correzioni-pipeline-musicale.md) — implementazione, uso e verifiche.

- [Audit dei file musicali non referenziati](analisi/006-file-non-referenziati.md) — elenchi MP3, PDF e LilyPond con evidenze.

- [Completamento del percorso di teoria](analisi/007-completamento-teoria.md) — finale, modulazione e letture armoniche, 10 novembre 2026.

- [Modern jazz, fusion e sviluppo ritmico](analisi/008-modern-jazz-fusion.md) — ampliamento armonico e nuovo percorso ritmico con spartiti/audio, 10 novembre 2026.

Il nuovo capitolo `src/docs/12-ritmo-sviluppo.rst` precede le letture conclusive nell’indice.

- [Ascoltare e analizzare i percorsi d’autore](analisi/009-percorsi-autore.md) — dieci analisi collegate al percorso operativo di Pratica; nuovo capitolo `src/docs/13-percorsi-autore.rst`, 10 novembre 2026.

- [Read the Docs: formati degli spartiti](analisi/010-readthedocs-formati-spartiti.md) — PDF esistenti per LaTeX, SVG per HTML/ePub, 10 novembre 2026.
