# Outline

## Cíle

What is in scope

What is out of scope

- git intro?
- github intro?
- personal efficiency tips
- EDA tools (bordering on data documentation?)

Question

## Outline

## Bits of wisdom to include

- wrap things into functions
- restart often
- commit often
- no .Rdata autosave => RStudio settings
- README
- file naming
- config
- keep log of what you find
- function naming
- Zotero

## Zdroje

- Project based workflows
  - https://r4ds.had.co.nz/workflow-projects.html
  - https://rstats.wtf/
  - https://www.tidyverse.org/blog/2017/12/workflow-vs-script/
  - https://sharstudioconf.netlify.app/#10
- Column names as contracts
- R in production
- https://www.emilyriederer.com/post/team-of-packages/ + [talk](https://www.emilyriederer.com/talk/organization/)

## Vstupy od Katky

### Předpoklady, které snad všichni chápeme, ale možná neškodí je připomenout 

- Používáme R projekty 
- Všechna data jsou ve složkách v repozitáří (ne na osobním disku) 
- Nepřepisujeme vstupní (raw) data 

### Témata, která IMHO všichni řeší, nebo by řešit měli…

Určitě bude hodně cenné, když budeš sdílet své zkušenosti, máš jich hrozně moc a určitě jsi prošel vývojem v tom, jak Ti dává smysl věci dělat. 

1.	Dokumentace dat, metadata, jak dělat správně 
2.	Tvorba codebooku – co když potřebuji vyrobit codebook s přehledem proměnných, datovými typy, možnostmi odpvoědí…
3.	Názvy proměnných – když máme dataset s hodně proměnnými, osvědčuje se je spíše přejmenovávat, aby se v nich člověk snadněji vyznal, nebo spíše nechávat původní technické názvy (např u šetření jako je PISA), u kterých je s codebookem jasnější, co znamenají?

Labels - začínají fungovat v ggplot2, fungují v data vieweru

4.	Kontrola dat – chybějící hodnoty, extrémní hodnoty, kontrola celého datasetu – našla jsem např. balíček dataMaid, používáš? 

naniar
visdat
DataExplorer
skimr
inspectDF
SmartEDA
dataMaid

5.	Pojmenovávání souborů – u dat za různá období – dávat datum na začátek, nebo na konec? 

formáty datumů

6.	Osvědčená a neosvědčená struktura dat v projektu – složky, podsložky

Je to jedno?

7.	Jak přemýšlet nad tím, jestli chci 1 projekt nebo víc? Kdy to rozčlenit do více projektů? Když mám např. v 1 projektu 20 R skriptů je to ok, nebo už moc? Když mám data za rok 2023 a 2024 je lepší to mít jako 2 projekty nebo v 1 projektu? 

Hmm...

8.	Jak udržovat kód čitelný – best practice, co se vyplatí používat v nastavení Rstudia v sekci Code

- outline
- manageable pipes
- indent
- comment

9.	Jak kontrolovat, že mám nainstalované a načtené všechny balíčky (a že jsou aktuální)

{renv}

10.	Jak upgradovat R a Rstudio 

Hihi

11.	Ukázka spuštění více skriptů v daném pořadí build_all

- pane
- build.R

12.	Kontrola podmínek – validate, assert_that, stopifnot, possibly – nebo co používáš ty 

- {pointblank}
- validate
- assertr https://data-cleaning.github.io/validate/
- data.validator

13.	Nastavení notifikace, že skript doběhl 

{beepr}

14.	Kontrola skriptu, jestli v něm nejsou nějaké chyby – jak možnou chybovost snížit? Chyby v načítání a ukládání souborů, filtrování, seskupování – jak průběžně efektivně výstupy kontrolovat 
15.	Jak zpětně uklidit chaotický nebo neefektivní kód? Nějaké tipy?

No clue.

16.	Reorganizace R projektů – mám původně 1 narostl a chci jich udělat (rozsekat je do) víc – co pohlídat 
17.	Co když nepoužívám Github nebo jiný verzovací systém, mám skripty na disku a verzuju cisly napr skript_01, skript_02 , skripty jsou dlouhé a chci rychle zkontrolovat, v čem všem se liší – je na to nějaký nástroj, resp. jaký je doporučený postup? 

Hmm nějaký diff? https://www.diffchecker.com/

18.	Verzování – jak často dělat nové verze, vyplatí se komentovat hlavní změny?

CHANGELOG / NEWS.md

19.	(za jakých okolností) Je dobré používat pins nebo targets? Eventuelně jiné balíčky 



20.	Archivace skriptů a dat – jak na to 
21.	Jak udělat šablonu skriptu – aby se načítaly např. nějaké balíčky, byly tam konkrétní sekce atd. 

usethis::use_template()

22.	Kdy se vyplatí používat GitHub nebo jiný verzovací systém. 

Vždycky?

23.	Případně ukázka GitHubu – jak funguje 
24.	Diskuse a sdílení toho, co různé týmy v celé tematice řeší 
