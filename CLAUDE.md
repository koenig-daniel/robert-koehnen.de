# Claude-Anweisungen für robert-koehnen.de

## Session-Management

### Session-Start ("Guten Morgen")
1. `_start_session.ps1` ausführen (git pull + Status)
2. Memory lesen und Kontext auffrischen
3. Kurz bestätigen was bekannt ist (aktueller Stand, offene Punkte)
4. Offene Backlog-Punkte aus dem Memory nennen

### Session-Ende ("Gute Nacht")
1. Memory aktualisieren — alle wichtigen Erkenntnisse, Änderungen, offene Punkte sichern
2. Backlog aktualisieren
3. `_end_session.ps1` ausführen (git commit + push)

## Projekt-Übersicht

Website für Robert Köhnen, Fantasy-Autor (Bruder des Nutzers).

- `index.html` — Hauptseite (One-Pager): Hero, Autor-Bio, Serien, Einzelbände, Footer
- `style.css` — Dark-Mode-Design, Gold-Akzente, Particle-Hintergrund
- `bio.md` — Autoren-Bio (Quelle für Website-Text)
- `robert_koehnen.jpg` — Autorenfoto
- `covers/` — 12 Buchcover-Bilder (JPG)
- `impressum.html` — noch nicht erstellt (im Footer verlinkt)

## Bücher

**Die Schule der Abenddämmerung** (6 Bände):
Band 1–6: Abenddämmerung, Der Violette Mann, Schleichende Risse, Kalte Fronten, Glanz und Schatten, Hungrige Wellen

**Flüstern im Zwielicht** (4 Teile):
Teil 1–4: Der Meister der Flammen, Das Land im Schnee, Der Verlassene Wald, Die Reise in die Schatten

**Einzelbände:** Das Reich der Feen, Das Land der Seele

Amazon-Autorenseite: https://www.amazon.de/stores/Robert-K%C3%B6hnen/author/B0DGB2V4HJ

## Design-Prinzipien — immer einhalten

- **Dark Fantasy Ästhetik** — Hintergrund `#0e0f13`, Goldakzente `#c9a96e`, Partikel-Animation
- **Schriften** — Playfair Display (Überschriften, Italic), Source Sans 3 (Fließtext, 300)
- **Buchkarten** — Cover oben (aspect-ratio 2/3), Info unten, Button "Bei Amazon"
- **Keine externen Abhängigkeiten** — kein Framework, kein Build-Tool, plain HTML/CSS/JS

## Wichtige Regeln

- Kein Build-Schritt — direkt editierbare Dateien, kein npm, kein Bundler
- `impressum.html` fehlt noch — im Footer verlinkt, muss noch erstellt werden
- Cover-Dateinamen exakt beachten (Leerzeichen in einem Dateinamen: `Fluestern_im_Zwielicht_1_Der Meister_der_Flammen.jpg`)

## Einrichtung (neuer Rechner)

### 1. Tools installieren
```powershell
winget install Git.Git GitHub.cli Microsoft.VisualStudioCode OpenJS.NodeJS
```

### 2. Claude Code
```powershell
npm install -g @anthropic-ai/claude-code
```

### 3. GitHub einrichten
```powershell
git config --global user.name "Dein Name"
git config --global user.email "deine@email.de"
gh auth login
```

### 4. Repository klonen
```powershell
git clone https://github.com/koenig-daniel/robert-koehnen.de.git C:\dev\robert-koehnen.de
```

### 5. OneDrive-Symlink für Claude-Memory
Damit Memory zwischen Rechnern synchronisiert wird (Admin-PowerShell, nur wenn noch kein Symlink):
```powershell
Remove-Item "C:\Users\$env:USERNAME\.claude" -Recurse -Force
New-Item -ItemType SymbolicLink -Path "C:\Users\$env:USERNAME\.claude" -Target "C:\Users\$env:USERNAME\OneDrive\.claude"
```

### 6. Claude Code Berechtigungen
In `.claude/settings.local.json` im Projektverzeichnis (siehe dort).
