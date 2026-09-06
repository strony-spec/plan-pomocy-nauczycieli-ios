# Plan pomocy nauczycieli — aplikacja na iPhone

Projekt zawiera interaktywny plan pomocy nauczycieli wbudowany w natywną aplikację iOS. Plan działa bez połączenia z internetem. Zapamiętywane są wybrany styl, widok, osoba, klasa, dzień i rozmiar tekstu.

## Najprostsza instalacja na własnym iPhonie

1. Rozpakuj plik ZIP na komputerze Mac.
2. Otwórz `PlanPomocyNauczycieli.xcodeproj` w Xcode.
3. Wybierz projekt `PlanPomocyNauczycieli`, następnie kartę **Signing & Capabilities**.
4. W polu **Team** wybierz swoje konto Apple. Jeśli Xcode poprosi, zmień Bundle Identifier na unikalny, np. `pl.twojanazwa.planpomocy`.
5. Podłącz iPhone do Maca, odblokuj go i zaakceptuj zaufanie do komputera.
6. Na górnym pasku Xcode wybierz swój iPhone jako urządzenie docelowe.
7. Kliknij przycisk **Run** (trójkąt). Xcode podpisze aplikację i zainstaluje ją na telefonie.

Przy pierwszym uruchomieniu iPhone może poprosić o włączenie trybu deweloperskiego lub zaufanie do profilu dewelopera.

## Eksport pliku IPA

1. W Xcode wybierz jako cel `Any iOS Device (arm64)`.
2. Wybierz **Product → Archive**.
3. Po utworzeniu archiwum wybierz **Distribute App**.
4. Wybierz **Development** albo **Ad Hoc**, zgodnie z posiadanym profilem Apple.
5. Wskaż profil i certyfikat, a następnie wybierz **Export**.

Instalowalny IPA wymaga certyfikatu podpisującego oraz profilu provisioning powiązanego z identyfikatorem aplikacji. Przy dystrybucji Ad Hoc iPhone musi być zarejestrowany w profilu.

## Podpisany IPA bez komputera Mac

Projekt zawiera gotowy proces **GitHub Actions**, który buduje aplikację na serwerze macOS i eksportuje podpisany plik IPA metodą Ad Hoc. W repozytorium trzeba dodać certyfikat i profil provisioning jako chronione sekrety.

Pełna instrukcja znajduje się w pliku `GITHUB_IPA.md`.

## Dane aplikacji

- Nazwa: **Plan pomocy**
- Minimalna wersja systemu: **iOS 15.0**
- Urządzenia: **iPhone**
- Tryb pracy: **offline**
- Domyślny identyfikator: `pl.spjedynka.planpomocy`

RMang oraz RMj2 są traktowani jako ta sama osoba. Lekcje „język 2” są własnymi lekcjami RMang i blokują równoczesny przydział tej osoby jako pomocy nauczyciela.
