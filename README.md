# WiTCOM Genexis Operator Defaults

## Build

- Release-Version in Datei release.version anpassen (SemVer)
- CHANGELOG.md anpassen (https://keepachangelog.com/en/1.0.0/)

## Nutzung von Kennwörtern/Secrets
Generell sollte man es vermeiden Kennwörter/Secrets im operator-defaults Package zu hinterlegen. Manchmnal geht es aber nicht anders.
Es ist aber VERBOTEN diese Kennwörter im Code-Repository zu hinterlegen. Stattdessen sollen die Secrets im Build-Prozess aus Umgebungsvariablen
gelesen werden.

Beispiele

- Default-Device Passwort
- ACS Kennwörter

## EXEC-Templates

EXEC-Files die Kenwörter/Secrets/etc.) enthalten werden während des RELEASE-Prozesses aus Templates erstellt. Die Templates befinden sich unter

- /templates/phaseX/exec

Beim Build-Prozess werden daraus die finalen Exec-Files erzeugt

