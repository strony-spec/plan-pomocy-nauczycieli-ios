# Plan pomocy nauczycieli — iPhone

[![Build signed IPA](https://github.com/strony-spec/plan-pomocy-nauczycieli-ios/actions/workflows/build-signed-ipa.yml/badge.svg)](https://github.com/strony-spec/plan-pomocy-nauczycieli-ios/actions/workflows/build-signed-ipa.yml)

Natywna aplikacja iOS z interaktywnym planem pracy pomocy nauczycieli. Plan jest wbudowany w aplikację i działa bez połączenia z internetem.

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

Workflow nie zawiera certyfikatów ani profili Apple. Dane podpisujące należy dodać wyłącznie jako sekrety repozytorium.
