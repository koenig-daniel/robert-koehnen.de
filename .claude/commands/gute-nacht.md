---
description: robert-koehnen.de Session beenden — Memory aktualisieren, git commit + push
---

Führe den Session-Abschluss für das robert-koehnen.de-Projekt durch:

1. Aktualisiere das Memory (`C:\Users\danie\.claude\projects\c--dev-robert-koehnen-de\memory\`) mit allen wichtigen Erkenntnissen, Änderungen und offenen Punkten dieser Session — insbesondere `project_backlog.md`
2. Prüfe ob neue Design-Prinzipien erarbeitet wurden: Überlege welche Gestaltungsentscheidungen in dieser Session getroffen wurden (Farben, Layout, Inhalte, Struktur) — falls neue Prinzipien entstanden sind oder bestehende angepasst wurden, aktualisiere den Abschnitt "Design-Prinzipien" in `c:/dev/robert-koehnen.de/CLAUDE.md`
3. Prüfe ob der Einrichtungs-Abschnitt in CLAUDE.md angepasst werden muss: Überlege welche Änderungen in dieser Session vorgenommen wurden (neue Dateien, Abhängigkeiten, Skripte) — falls etwas davon relevant für die Ersteinrichtung eines neuen Rechners ist, aktualisiere den Abschnitt "Einrichtung" in `c:/dev/robert-koehnen.de/CLAUDE.md`
4. Lösche temporäre Hilfsskripte im Projektverzeichnis `c:/dev/robert-koehnen.de/` — das sind Dateien die mit `_` beginnen und NICHT zu den dauerhaften Skripten gehören. Dauerhafte Skripte (nie löschen): `_start_session.ps1`, `_end_session.ps1`. Temporäre Skripte (löschen falls vorhanden): alle anderen `_*.ps1` Dateien
5. Führe aus: `powershell -ExecutionPolicy Bypass -File c:/dev/robert-koehnen.de/_end_session.ps1`
6. Bestätige: Memory aktualisiert, CLAUDE.md geprüft, temporäre Skripte entfernt, git gepusht
