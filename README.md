# SonicPi töötuba

Tõmba alla Sonic Pi: https://sonic-pi.net/  
TTÜ võrgus kiiremaks laadimiseks: https://ained.ttu.ee/javadoc/SonicPi.exe


## Korraldus

Väike demo ja tutvustus.

Seejärel igaüks proovib teha "loo". Võib ka grupitööd teha.

Lõpus võimalus teistele presenteerida oma lugu. Sellega kogud *fame*'i.

## Juhised


### `play`

`play 50`

Mängib noodi "kõrgusega" 50.

`play 60`

Mängib kõrgema noodi

`play 40`

Mängib madalama noodi

`play :E4`

Mängib "mi" noodi (4. oktav).

`play :E5`

5. oktavi "mi".

### `sleep`

Paus kahe korralduse vahel.

`sleep 1`

Paus üks löök.

Löögipikkuse saab määrata: `use_bpm 120` - 120 lööki minutis, üks löök on umbes pool sekundit.

### `amp`

*Amplitude* ehk "helivaljudus". Kõrgem väärtus teeb kõvemat häält. Saab kasutada näiteks `play` käsu juures:

`play 50, amp: 2`

Vaikimisi väärtus on 1 (st kui ei määra amp väärtust eraldi, siis on see 1).

`play :E4, amp 0.4`

(0.4 on vaiksem kui tavaliselt).

### Sepapoiss

Proovi seda:

```
play :C4
sleep 0.5
play :D4
sleep 0.5
play :E4
sleep 0.5
play :C4
```
