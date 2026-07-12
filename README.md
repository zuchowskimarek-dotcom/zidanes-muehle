# Zidane's Mühle ⚪⚫

Ein Mühle-Spiel (Nine Men's Morris) für Zidan — gebaut fürs iPhone, läuft aber in jedem Browser.

## Spielen

Einfach `index.html` im Browser öffnen — keine Installation, keine Abhängigkeiten, eine einzige Datei.

**Auf dem iPhone:** Die gehostete Seite in Safari öffnen → Teilen → **Zum Home-Bildschirm**. Dann startet das Spiel im Vollbild wie eine echte App.

## Features

- 🤖 **Gegen den Computer** oder 👥 **zu zweit** am selben Handy
- Vollständige Mühle-Regeln: Setzen, Ziehen, Fliegen (bei 3 Steinen), Mühlen mit Schlag-Regeln, beide Gewinnbedingungen
- Blaue Punkte zeigen immer, wo man tippen darf; rote Ringe markieren schlagbare Steine
- Animationen, Sounds (abschaltbar), Undo-Knopf und Konfetti für den Sieger
- Design nach Zidans echtem Spielbrett: Safran-orangenes Brett, elfenbeinfarbene und schwarze Steine

## Dateien

| Datei | Zweck |
|---|---|
| `index.html` | Komplettes, eigenständiges Spiel (Deployment-Ziel) |
| `zidanes-muehle.html` | Quelldatei als HTML-Fragment (für Claude-Artifacts) |

Kein Build-Schritt: `index.html` wird aus dem Fragment erzeugt, indem es in ein `<!DOCTYPE html>`-Gerüst gehüllt wird.
