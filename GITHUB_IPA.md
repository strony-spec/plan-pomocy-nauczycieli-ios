# Podpisany IPA przez GitHub Actions

Projekt zawiera workflow `.github/workflows/build-signed-ipa.yml`. Uruchamia Xcode na komputerze macOS należącym do GitHub, podpisuje aplikację metodą Ad Hoc i zapisuje gotowy IPA jako artefakt.

## Czego potrzebujesz

- certyfikatu Apple Distribution wyeksportowanego razem z kluczem prywatnym do pliku `.p12`,
- hasła ustawionego przy eksporcie `.p12`,
- profilu Ad Hoc `.mobileprovision`, który zawiera:
  - właściwy App ID,
  - ten sam certyfikat Apple Distribution,
  - UDID iPhone'a, na którym aplikacja ma być instalowana.

Nie dodawaj certyfikatu ani profilu do repozytorium.

## Sekrety repozytorium

W repozytorium GitHub otwórz:

**Settings → Secrets and variables → Actions → New repository secret**

Dodaj dokładnie trzy sekrety:

| Nazwa sekretu | Wartość |
| --- | --- |
| `IOS_DISTRIBUTION_CERTIFICATE_BASE64` | zawartość pliku `.p12` zakodowana Base64 |
| `IOS_CERTIFICATE_PASSWORD` | hasło pliku `.p12` |
| `IOS_PROVISIONING_PROFILE_BASE64` | zawartość `.mobileprovision` zakodowana Base64 |

W systemie Windows możesz skopiować Base64 do schowka w PowerShell:

```powershell
[Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\sciezka\certyfikat.p12")) | Set-Clipboard
```

```powershell
[Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\sciezka\profil.mobileprovision")) | Set-Clipboard
```

Wklej wynik pierwszego polecenia jako wartość sekretu certyfikatu, a wynik drugiego jako wartość sekretu profilu.

## Budowanie IPA

1. Otwórz kartę **Actions** w repozytorium.
2. Wybierz **Build signed IPA**.
3. Kliknij **Run workflow**, a następnie ponownie **Run workflow**.
4. Po zakończeniu otwórz wykonanie i pobierz artefakt **PlanPomocyNauczycieli-signed-ipa**.
5. Rozpakuj artefakt. Znajdziesz w nim podpisany plik `.ipa` oraz `SHA256SUMS.txt`.

Workflow automatycznie odczytuje z profilu identyfikator aplikacji, identyfikator zespołu Apple i nazwę profilu. Weryfikuje również podpis aplikacji przed udostępnieniem IPA.

## Ważne

IPA podpisany metodą Ad Hoc uruchomi się tylko na iPhone'ach, których UDID znajduje się w użytym profilu provisioning. Sekrety są używane wyłącznie w czasie kompilacji; pliki tymczasowe i osobny pęk kluczy są usuwane po zakończeniu zadania.
