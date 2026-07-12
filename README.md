# Zidane's Mühle ⚪⚫

Ein Mühle-Spiel (Nine Men's Morris) für Zidan — gebaut fürs iPhone, läuft aber in jedem Browser.

## Spielen

Einfach `index.html` im Browser öffnen — keine Installation, keine Abhängigkeiten, eine einzige Datei.

**Auf dem iPhone:** Die gehostete Seite in Safari öffnen → Teilen → **Zum Home-Bildschirm**. Dann startet das Spiel im Vollbild wie eine echte App.

## Features

- 🤖 **Gegen den Computer** oder 👥 **zu zweit** am selben Handy
- **5 Schwierigkeitsgrade** mit Freischalt-System — 3 Siege öffnen das nächste Level (Fortschritt wird auf dem Gerät gespeichert):
  | Level | Name | Gegner |
  |---|---|---|
  | 1 | 🐣 Kinderleicht | Spielt meist zufällig, übersieht Mühlen |
  | 2 | 🙂 Locker | Heuristik: vervollständigt und blockiert Mühlen |
  | 3 | 🦊 Schlau | Minimax-Suche, 3 Halbzüge tief |
  | 4 | 💪 Wettkampf | Minimax-Suche, 5 Halbzüge tief |
  | 5 | 🧠 Profi | Iterative Suche bis 9 Halbzüge (max. 1 s Denkzeit) |
- Vollständige Mühle-Regeln: Setzen, Ziehen, Fliegen (bei 3 Steinen), Mühlen mit Schlag-Regeln, beide Gewinnbedingungen
- Blaue Punkte zeigen immer, wo man tippen darf; rote Ringe markieren schlagbare Steine
- Animationen, Sounds (abschaltbar), Undo-Knopf und Konfetti für den Sieger
- Design nach Zidans echtem Spielbrett: Safran-orangenes Brett, elfenbeinfarbene und schwarze Steine

## Intro

Die Landing-Page (`index.html`) ist ein ~16-sekündiges 3D-Kino-Intro (Three.js, in
Echtzeit gerendert), das bei **jedem Besuch** einmal abläuft: eine stürmische Mondnacht
auf See, ein Piratenschiff mit Strohhut-Totenkopf-Flagge 🏴‍☠️, das Mühle-Brett steigt
wie ein Schatz aus der Tiefe, eine goldene Mühle blitzt auf — dann der Titel und
„Jetzt spielen" (→ `game.html`). Mit prozeduralem Sound (Donner, Meer, Fanfare; Ton
startet nach dem ersten Tippen), komplett offline, keine Videodatei. „Überspringen"
ist immer möglich; im Spielmenü gibt es „🎬 Intro ansehen" zum erneuten Anschauen.

## Dateien

| Datei | Zweck |
|---|---|
| `index.html` | Landing-Page = 3D-Intro (Kopie von `intro.html`) |
| `game.html` | Komplettes, eigenständiges Spiel |
| `intro.html` | 3D-Kino-Intro (Three.js), Quelldatei |
| `zidanes-muehle.html` | Spiel-Quelldatei als HTML-Fragment (für Claude-Artifacts) |
| `three.min.js` | Three.js r147 (lokal, kein CDN) |

Kein Build-Schritt: `index.html` wird aus dem Fragment erzeugt, indem es in ein `<!DOCTYPE html>`-Gerüst gehüllt wird.
