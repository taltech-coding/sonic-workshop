# lihtne toorik, kuhu midagi peale ehitada

use_bpm 120

# bass-trummi "mängija" - võiks kokku 4 lööki olla
live_loop :bassdrum do
  sample :bd_808, amp: 4
  sleep 4
end

# hi-hat "mängija" - võiks kokku 4 lööki olla
live_loop :hihat do
  4.times do
    sample :drum_cymbal_closed
    sleep 1
  end
end

# "meloodia" "mängija"
live_loop :melody1 do
  # kui random_seed numbrit muuta, saab teistsuguse "meloodia"
  use_random_seed 120
  
  # kasutame süntesaatorit "pulse"
  use_synth :pulse
  
  # noodid, mille seast "meloodiat" mängitakse
  notes = (scale :gs3, :minor_pentatonic, num_octaves: 2).shuffle.take(4)
  
  # with_fx - lisame efekti, mix vahemikus 0 kuni 1 näitab, kui palju efekti kasutada
  
  with_fx :bitcrusher, mix:0.5 do
    with_fx :slicer, phase:0.25, mix:0.8 do
      
      # mängib 16 korda ühte nooti eelnevalt määratud nootidest
      16.times do
        play notes.choose, release: 0.4, cutoff: rrand(70, 120)
        sleep 0.5
      end
    end
    
  end
end

