# Dance Monkey - v0.1

use_bpm 100

a = -> {
  play_pattern_timed [:fs2, :e2, :fs2, :e2, :fs2, :e2], [0.5], release: 0.1
  play_pattern_timed [:fs2, :e2, :fs2, :a2, :gs2], [0.25, 0.5, 0.5, 0.5, 1.25], release: 0.1
}

b1 = -> {
  play_pattern_timed [:a2, :a2, :gs2, :fs2, :fs2, :e2, :fs2, :e2, :fs2, :a2, :gs2],
  [0.25, 0.5, 0.75, 0.25, 0.75, 0.25, 0.5, 0.5, 0.5, 0.5, 1.25], release: 0.1
}

b2 = -> {
  play_pattern_timed [:a2, :a2, :gs2, :fs2, :fs2, :e2,  :fs2, :e2, :fs2, :a2, :gs2],
  [                   0.25, 0.5, 0.75, 0.25, 0.75, 0.25, 0.5, 0.5, 0.5,  0.75, 2], release: 0.1
}

c = -> {
  play_pattern_timed [:cs3, :b2, :b2, :a2, :b2, :a2,  :b2, :a2, :gs2, :gs2, :gs2, :fs2, :e2, :fs2],
  [                   1,    1,   0.5, 0.5, 0.5, 0.5,  0.5, 0.5, 0.25,  0.5, 0.5,  0.25, 0.5, 1], release: 0.1
}


d = -> {
  play_pattern_timed [:r,  :fs2,  :a2, :a2, :fs2,  :a2, :gs2,  :fs2, :fs2, :fs2, :a2],
  [                   0.75, 0.25,  0.25, 0.5, 1.25, 0.75, 0.5,  0.5,  0.5,  0.75,  2], release: 0.1
}

e = -> {
  play_pattern_timed [:b2, :a2,   :gs2, :fs2, :gs2, :fs2,  :gs2, :fs2, :fs2, :fs2, :a2],
  [                   1.5,  0.5,   0.5, 0.5,  0.5,  0.5,   0.5, 0.5,  0.25,  0.5, 2.25], release: 0.1
}

f = -> {
  play_pattern_timed [:r,  :fs2,  :a2, :a2,  :gs2,  :fs2, :gs2,  :fs2, :gs2, :fs2, :fs2, :a2, :gs2, :r],
  [                   0.75, 0.25,  0.25, 0.5, 0.75, 0.25, 0.75,  0.25,  0.75, 0.25,  0.5, 0.75, 1, 1], release: 0.1
}

g = -> {
  play_pattern_timed [:fs2, :fs2, :a2, :a2, :a2, :gs2, :gs2, :gs2, :gs2, :fs2, :fs2, :a2, :a2, :fs2, :r],
  [                    1,    1,   0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.25, 0.5, 1.25, 1], release: 0.1
}

h = -> {
  play_pattern_timed [:r, :fs2,   :a2, :a2, :gs2, :gs2, :fs2, :gs2, :fs2, :gs2, :fs2, :gs2, :fs2, :a2, :gs2, :fs2, :a2, :r],
  [                   0.75, 0.25, 0.25,0.5, 0.75, 0.25, 0.25, 0.25, 0.25, 0.25, 0.5,  0.5,  0.25, 0.5, 0.5,  0.5,  0.5, 1], release: 0.1
}

i = -> {
  play_pattern_timed [:r, :fs2,   :a2, :a2, :gs2, :fs2, :gs2, :fs2, :gs2, :fs2, :a2, :gs2, :fs2, :a2, :r],
  [                   0.75, 0.25, 0.25,0.5, 0.75, 0.5,  0.5,  0.5,  0.25, 0.5,  0.75, 0.5, 0.5,  0.5, 1], release: 0.1
}

in_thread do
  use_synth :piano
  # intro
  use_octave 2
  7.times do
    play :cs3, release: 0.1
    sleep 0.5
  end
  play :cs3, release: 0.1
  sleep 0.25
  play :a2, release: 0.1
  sleep 0.25
  
  sleep 0.5
  6.times do
    play :a2, release: 0.1
    sleep 0.5
  end
  play :a2, release: 0.1
  sleep 0.25
  play :b2, release: 0.1
  sleep 0.25
  
  sleep 0.5
  6.times do
    play :b2, release: 0.1
    sleep 0.5
  end
  play :b2, release: 0.1
  sleep 0.25
  play :gs2, release: 0.1
  sleep 0.25
  
  sleep 0.5
  5.times do
    play :gs2, release: 0.1
    sleep 0.5
  end
  
  # melody
  a.call
  sleep 2
  b1.call
  sleep 1.5
  play :e2, release:0.1
  sleep 0.5
  a.call
  sleep 1.75
  play :fs2, release: 0.1
  sleep 0.25
  b2.call
  
  c.call
  d.call
  e.call
  f.call
  g.call
  h.call
  g.call
  i.call
  
  # verse?
  
  
end

in_thread do
  use_synth :piano
  8.times do
    play_chord chord(:fs2, :minor), release: 4
    sleep 4
    play_chord chord(:d2, :major), release: 4
    sleep 4
    play_chord chord(:e2, :major), release: 4
    sleep 4
    play_chord chord(:cs2, :major), release: 4
    sleep 4
  end
  
end

