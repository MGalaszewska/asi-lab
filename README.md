Michał Kassjański (zaliczenie)

[StudentLog](https://infinite-tor-53957.herokuapp.com/).

| Wersja Ruby   | Wersja Rails  | Baza danych  |
|:-------------:|:-------------:|:-------------:|
| 2.3.3         | 5.0.2         |SQLite (development)|
|               |               |PostgreSQL (production)|

:mortar_board: StudentLog przechowuje informacje o studentach. Bez zalogowania możemy jedynie zobaczyć listę studentów oraz ich szczegóły. Po zalogowaniu mamy możliwość edytowania, dodawania oraz usuwania studentów.

Dodatkowe Gemy:
* faker - tworzenie studentów z polskimi imionami i nazwiskami
* paperclip - możliwość dodania zdjęcia
  * aws-sdk - [konfiguracja](https://github.com/mkassjanski/asi-lab/blob/master/config/environments/production.rb#L89)
