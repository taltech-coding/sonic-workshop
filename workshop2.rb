# keerukamad helid ja sample

live_loop :beat do
  sample :loop_amen, beat_stretch: 2, amp:0.3
  sleep 2
end



live_loop :space_scanner do
  use_synth :tb303
  with_fx :reverb, room: 0.8 do
    with_fx :slicer, phase: 0.25, amp: 1.5 do
      co = (line 70, 130, steps: 8).tick
      play :e1, cutoff: co, release: 7, attack: 1, cutoff_attack: 4, cutoff_release: 4
      sleep 8
    end
  end
  
end

live_loop :squelch do
  use_synth :tb303
  use_random_seed 3000
  with_fx :reverb, room: 0.8 do
    16.times do
      n = (ring :e1, :e2, :e3).tick
      play n, release: 0.125, cutoff: rrand(70, 130), res: 0.9, wave: 1, amp: 0.8
      sleep 0.125
    end
  end
  
end