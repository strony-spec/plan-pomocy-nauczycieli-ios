# Plan pomocy nauczycieli — iPhone

[![Build signed IPA](https://github.com/strony-spec/plan-pomocy-nauczycieli-ios/actions/workflows/build-signed-ipa.yml/badge.svg)](https://github.com/strony-spec/plan-pomocy-nauczycieli-ios/actions/workflows/build-signed-ipa.yml)

Natywna aplikacja iOS z interaktywnym planem pracy pomocy nauczycieli. Plan jest wbudowany w aplikację i działa bez połączenia z internetem.

## Wersja instalowana z Safari

Jednorazowo otwórz **Settings → Pages** w repozytorium i w sekcji
**Build and deployment** ustaw **Source: GitHub Actions**. Następnie uruchom
workflow **Deploy interactive schedule**. Po wdrożeniu aplikacja jest dostępna
pod adresem:

**https://strony-spec.github.io/plan-pomocy-nauczycieli-ios/**

Na iPhonie otwórz ten adres w Safari, wybierz **Udostępnij**, następnie **Do ekranu początkowego** i potwierdź przyciskiem **Dodaj**. Plan uruchamia się wtedy z własnej ikony i po pierwszym otwarciu działa również bez internetu.

## Funkcje

- widok planu według pomocy nauczyciela, klasy i dnia,
- style: kolorowy, kontrastowy i profesjonalny,
- powiększanie tekstu w stylu kontrastowym,
- responsywny układ dla iPhone'a,
- działanie offline,
- poprawne połączenie ról `RMang` i `RMj2` — ta sama osoba nie jest jednocześnie nauczycielem przedmiotu i pomocą.

## Uruchomienie

- Instalacja bezpośrednio z Xcode: zobacz [`INSTRUKCJA.md`](INSTRUKCJA.md).
- Budowanie podpisanego IPA w GitHub Actions: zobacz [`GITHUB_IPA.md`](GITHUB_IPA.md).
- Automatyczna publikacja wersji webowej: workflow `.github/workflows/deploy-pages.yml`.

Workflow nie zawiera certyfikatów ani profili Apple. Dane podpisujące należy dodać wyłącznie jako sekrety repozytorium.
