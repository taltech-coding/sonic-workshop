# SonicPi töötuba

Tõmba alla Sonic Pi: https://sonic-pi.net/  
TTÜ võrgus kiiremaks laadimiseks: https://ained.ttu.ee/javadoc/SonicPi.exe


## Korraldus

Väike demo ja tutvustus.

Seejärel igaüks proovib teha "loo". Võib ka grupitööd teha.

Lõpus võimalus teistele presenteerida oma lugu. Sellega kogud *fame*'i.


## Juhised

Kopeeri allolevaid koodijuppe tekstiaknasse ja kliki "Run" (üleval vasakul ääres).

Ametlik dokumentatsioon: https://sonic-pi.net/tutorial.html

Samuti on dokumentatsioon Sonic Pi rakenduses nähtav. Kui ei ole, siis paremal üleval ääres on "Help" nupp, mis toob selle nähtavale.

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

### Instrument

`use_synth :prophet`

Edaspidi mängitavad noodid tulevad seda sünti kasutades. Kui kirjutad `use_synth :`, peaks SonicPi sulle pakkuma valikut. Võid katsetada.

### Sämplid

`sample :loop_amen`

Samuti `sample :` annab sulle valiku. `loop_` tsükleid on veel.

### Kordus / tsükkel

Võib kirjutada nii:

```
sample :loop_amen
sleep sample_duration :loop_amen
sample :loop_amen
sleep sample_duration :loop_amen
sample :loop_amen
sleep sample_duration :loop_amen
```
Sedasi mängitakse amen *loop*i kolm korda. Aga mis siis, kui on vaja 100 korda?

Kordust on võimalik kirjeldada sedasi:

```
12.times do
  sample :loop_amen
  sleep sample_duration :loop_amen
end
```

Aga lõputu kordus?

```
loop do
  sample :loop_amen
  sleep sample_duration :loop_amen
end
```

See lõpetab ära siis, kui vajutad "stop".


## Näiteid

```
notes = (ring :E4, :Fs4, :B4, :Cs5, :D5, :Fs4, :E4, :Cs5, :B4, :Fs4, :D5, :Cs5)

live_loop :slow do
  play notes.tick, release: 0.1
  sleep 0.25
end

live_loop :faster do
  play notes.tick, release: 0.1
  sleep 0.125
end
```

"Juhuslik" meloodia:

```
use_random_seed 11
melody = scale(:e4, :egyptian, num_octaves: 2).ring.shuffle

sleeps = [0.25, 0.25, 0.25, 0.25, 0.5, 0.5].ring.shuffle

live_loop :melody do
  use_synth :prophet
  8.times do
    play melody.tick, amp:1
    sleep sleeps.tick
  end
end
```

## Workshopi "teos"

```
# Welcome to Sonic Pi v3.1

use_bpm 80

live_loop :sally do
  stop
  sample :loop_amen, beat_stretch: 2, amp:0.5
  sleep 2
end

live_loop :sam do
  play :C4
  sleep 0.5
  play :D4
  sleep 0.5
  play :E4
  sleep 0.5
  play :F4
  sleep 0.5
end

live_loop :cow, sync: :sam do
  sample :drum_cowbell, amp: 0.2
  sleep 0.5
end

live_loop :beat do
  sample :bd_haus
  sleep 0.25
  sample :bd_haus
  sleep 0.25
  sample :bd_haus
  sleep 0.5
  sample :drum_snare_hard
  sleep 1
end

live_loop :hh do
  sample :drum_cymbal_closed
  sleep 0.25
end
```


Edasi uurimist: https://aimxhaisse.com/aerodynamic-en.html
