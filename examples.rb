use_bpm 120
use_synth :tb303


live_loop :b do
  4.times do
    sample :bd_haus
    sleep 1
  end
end


live_loop :m do
  with_fx :slicer, phase: 0.25 do
    use_synth :piano
    sleep 0.5
    play_pattern_timed [:a4, :bs4, :a4, :bs4, :a4, :bs4, :a4, :bs4], [0.5, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5, 0.5], release: 0.2, amp: 1
  end
  
end

live_loop :bass do
  use_synth :tb303
  play_pattern_timed [:d3, :d3, :bb3, :bb3, :bb3, :a3, :a3, :a3, :a3], [0.75, 0.75, 1, 1, 0.5, 1.5, 1, 0.5, 1], amp: 0.1, release: 0.2
  
end
