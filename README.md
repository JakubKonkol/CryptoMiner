# CryptoMiner
---------------
# 1.0 beta 5
- usuniety background fetch 
- usuniety app runtime 
- usunieta zmienna CurrentDate: Date = Date()
- usuniete niepotrzebne funkcje
- dodany w pełni sprawny system aktualizacji posiadanych kanesacoinow w tle
- dodany w pelni sprawy system przetrzymywania czasu ktory minal od zamkniecia aplikacji do jej uruchomienia (TotalTime)
- dodany ViewController ustawien (info_vc/InfoViewController)
- guzik reset przeniesiony do ustawien
- uporzadkowany kod/usuniete nieuzywane zmienne
- znaczna poprawa optymalizacji (timery zostały ograniczone tylko do wymaganych danych)

# 1.0 beta 4
- poprawione działanie zapisów (zapisy zapisuja juz tez aktualne ceny)
- ceny i guziki nie resetuja się po wyjsciu z aplikacji
- dodany został system background tasków czyli po zamknieciu aplikacji ona dalej działa w tle i poprawnie dodaje wartosci
- system background fetch jest bardzo bardzo bardzo prymitywny i aplikacja nie działa po całkowitym wyłączeniu
- dodany jest calkowity czas dzialania aplikacji w sekundach (działa z reset buttonem)
- dodane zostały fundamenty pod prawdziwe działanie aplikacji w tle i naliczanie coinow itp
- naprawienie strony "Moje koparki" gdzie ikona chmurki nie wchodzi juz na napis
- zegary nie sa juz opoznione wzgledem siebie 
- zmiana 2 zegarow na jeden, aktualizacja posiadanych kanesacoinow odbywa sie co sekunde
- Syf w kodzie jest niesamowity i niektore zmienne i funkcje deklarowane sa pare razy bez potrzeby a niektore nie maja nawet powiazan
- aplikacja potrafi scrashowac przez fatalna optymalizacje i fatalne dzialanie w tle
# 1.0 beta 3 
- dodane zostały zapisy (po wyjsciu masz swoj stan kasy itp)
- dodane automatyczne zapisywanie i wczytywanie (znowu w tym timerze zjebanym)
- dodany developerski guzik reset ktory resetuje stan gry do poczatku (potem bedzie w innym ViewControllerze)
# 1.0 beta 2 
- dodana karta ztx220 turbo (xd)
- funkcja liczenia juz poprawnie sie wykonuje
- kanesacoin/min odswieza sie co 10 sekund i pokazuje juz poprawne wartosci po przecinku 
- kanesacoin owned poprawnie pokazuje wartosci po przecinku 
- zmienne zostaly przekonwertowane na Double. static var Zmienna: Double = wartosc
- leciutkie (bardzo) poprawienie kodu 
- guzik kupna poprawnie sie aktualizuje 
- cena po kupnie karty graficznej rosnie 
- przejscia miedzy ViewControllerami nie zeruja juz zmiennych
- zmienne sa bezbłednie przekazywane miedzy miedzy ViewControllerami 
- Zegary sa lekko opoznione wzgledem siebie (moze zrobic jeden zegar?)


# 1.0 beta 1
- initial release 
