# WiTCOM Genexis Operator Defaults

## Anpassungen
Nicht in main - Branch. 

- Neue Branch erstellen
- Anpassen, testen, etc.
- Wenn es passt -> Release-Version in Datei release.version anpassen (SemVer), CHANGELOG.md anpassen (https://keepachangelog.com/en/1.0.0/), commit, PR erstellen

PR muss genehmigt werden, dann wird automatisch mittels GitHub Action ein Operator-Defaults Release erzeugt. Ein Build erfolgt nur wenn die Datei release.version angepasst wurde.

## Package lokal bauen

Z.B. für tests

```
export DEVICE_PASSWORD="neues-default-passwort-fuer-cpe"
export CWMP_CPE_PASSWORD="neues-passwort-fuer-cwmp-cpe"
export CWMP_ACS_PASSWORD="neues-passwort-fuer-cwmp-acs"
make all
```

Damit wird im Verzeichnis ein Operator-Defaults paket erzeugt

## Nutzung von Kennwörtern/Secrets
Generell sollte man es vermeiden Kennwörter/Secrets im operator-defaults Package zu hinterlegen. Manchmnal geht es aber nicht anders.
Es ist aber VERBOTEN diese Kennwörter als Klartext im Code-Repository zu hinterlegen. Stattdessen sollen Kennwörter als Secret im REPO hinterlegt werden um dann im Build-Prozess aus Umgebungsvariablen gelesen werden.

Beispiele

- Default-Device Passwort
- ACS Kennwörter

## EXEC-Templates

EXEC-Files die Kenwörter/Secrets/etc.) enthalten werden während des RELEASE-Prozesses aus Templates erstellt. Die Templates befinden sich unter

- /templates/phaseX/exec

Beim Build-Prozess werden daraus die finalen Exec-Files erzeugt
