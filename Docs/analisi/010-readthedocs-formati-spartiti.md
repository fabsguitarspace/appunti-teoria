# Read the Docs: selezione del formato degli spartiti

Data: 10 novembre 2026. Correzione congiunta a seguito della build 35798005 di Pratica.

I quattro esempi di `12-ritmo-sviluppo.rst` usavano SVG espliciti come quelli che hanno causato l'errore di conversione ImageMagick nella preparazione PDF di Pratica. Sono stati cambiati in `nome.*`: HTML/ePub scelgono SVG e LaTeX il PDF già presente. I media non vengono rigenerati e il contenuto musicale rimane identico.

Verificati HTML e preparazione LaTeX da zero, con avvisi come errori, entrambi riusciti; ePub generato con gli avvisi esistenti relativi ai file multimediali e ai metadati. Il test `tests/test_document_formats.py` di Pratica controlla anche i riferimenti in questo progetto e dimostra la selezione dei formati senza dipendere dal convertitore.

Non è disponibile un motore TeX locale per la compilazione finale del libro. Diagnosi, evidenze e limite di verifica sono riportati in `../appunti-pratica/Docs/analisi/017-readthedocs-formati-spartiti.md`.
