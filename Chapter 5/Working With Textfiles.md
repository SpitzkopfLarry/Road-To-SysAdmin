###Working With Textfiles
---
Ich nutze statt vim vi, da es auf jedem Linux System vorhanden ist. Vim oder nano müssen gegenfalls installiert werden. Dies ist nicht immer möglisch.
## 1. Kopiere die `/etc/services`-Datei ins `/tmp`-Verzeichnis. Öffne die `/tmp/services`-Datei in `vi`, suche den Begriff `WorldWideWeb` und ändere ihn in `World Wide Web`.

### Befehle:
```bash
cp /etc/services /tmp/
vi /tmp/services
```

### In vi:
- `/WorldWideWeb` → suchen
- `cwWorld Wide Web` → ändern (Cursor auf "WorldWideWeb" stellen, `cw` drücken, neuen Text eingeben)
- `:wq` → speichern und beenden

---

## 2. Finde den folgenden Absatz in deiner `/tmp/services`-Datei (oder wähle einen anderen) und verschiebe ihn ans Ende der Datei:
```
# Note that it is presently the policy of IANA to assign a single well-known
# port number for both TCP and UDP; hence, most entries here have two entries
# even if the protocol doesn't support UDP operations.
# Updated from RFC 1700, "Assigned Numbers" (October 1994). Not all ports
# are included, only the more common ones.
```

### In vi:
- `/policy of IANA` → Absatz suchen
- `Vjjj` → Zeilen markieren (ab erster Zeile `V`, dann `j` drücken bis zum letzten Eintrag)
- `d` → ausschneiden (delete)
- `G` → zum Ende der Datei springen
- `p` → Absatz einfügen
- `:wq` → speichern und beenden

---

## 3. Nutze `ex`-Modus in `vi`, um jeden `tcp`-Begriff (Case-sensitive) in der `/tmp/services`-Datei durch `WHATEVER` zu ersetzen.

### Befehle in vi:
```bash
vi /tmp/services
```
- `:1,$s/tcp/WHATEVER/g`
- `:wq`

---

## 4. Als normaler Benutzer: Durchsuche das `/etc`-Verzeichnis nach allen Dateien namens `passwd` und leite Fehlermeldungen nach `/dev/null` um.

### Befehl:
```bash
find /etc -name passwd 2>/dev/null
```

---

## 5. Erstelle im Home-Verzeichnis ein Verzeichnis `TEST`. Erzeuge darin die Dateien `one`, `two`, `three` mit vollen Rechten (rwx für alle). Finde alle Dateien im Home-Verzeichnis (und darunter), die für 'others' Schreibrechte besitzen.

### Befehle:
```bash
mkdir ~/TEST
cd ~/TEST
touch one two three
chmod 777 one two three
find ~ -perm -002
```

---

## 6. Finde alle Dateien im `/usr/share/doc`-Verzeichnis, die seit mehr als 300 Tagen nicht mehr geändert wurden.

### Befehl:
```bash
find /usr/share/doc -type f -mtime +300
```

---

## 7. Erstelle das Verzeichnis `/tmp/FILES`. Finde alle Dateien im `/usr/share`-Verzeichnis, die größer als 5MB und kleiner als 10MB sind, und kopiere sie nach `/tmp/FILES`.

### Befehle:
```bash
mkdir -p /tmp/FILES
find /usr/share -type f -size +5M -size -10M -exec cp {} /tmp/FILES/ \;
```

---

## 8. Finde alle Dateien im `/tmp/FILES`-Verzeichnis und erstelle jeweils eine Backup-Kopie im gleichen Verzeichnis, indem du `.mybackup` an die Dateinamen anhängst.

### Befehl:
```bash
find /tmp/FILES/ -type f -exec cp {} {}.mybackup \;
```

---

## 9. Installiere das `kernel-doc`-Paket (falls noch nicht vorhanden). Suche mit `grep` im Verzeichnis `/usr/share/doc/kernel-doc*` nach dem Begriff `e1000` (case-insensitive) und liste die Dateinamen auf, die diesen Begriff enthalten.

### Befehle:
```bash
sudo dnf install kernel-doc
grep -ril e1000 /usr/share/doc/kernel-doc*
```

---

## 10. Suche erneut nach dem Begriff `e1000` im gleichen Verzeichnis, gib diesmal aber jede Zeile aus, die den Begriff enthält, und hebe ihn farbig hervor.

### Befehl:
```bash
grep -ri --color=always e1000 /usr/share/doc/kernel-doc*
```
