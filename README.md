# Dobré praxe v R: reprodukovatelnost a péče o kód a data

> Materiály pro worshop Rkových analytiků ve státní správě, 3. 12. 2024

Co tu je a kde

- Slidy: index.qmd > index.html, viz [petrbouchal.xyz/analytici-r-goodpractice](https://petrbouchal.xyz/analytici-r-goodpractice)
- Ukázka targets pipeline: _targets.R + skripty v R/
- ukázka `config.yaml` (použito v _targets.R)
- ukázka `build.R` souboru pro ruční pouštění nebo zapojení do Build záložky
- ukázka `build.sh` souboru stavěného na pouštění {targets} pipeline v Build záložce
- ukázka renv.lock souboru s příslušenstvím -- systém {renv} lze v projektu vypnout či zapnout pomoci `r renv::activate()` resp. `r renv::deactivate`

## Kam dál

## Specifické nástroje a informace k nim

- {targets}
- {renv}
- {pointblank}
