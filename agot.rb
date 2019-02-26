use_bpm 168

live_loop :beat do
  sample :drum_tom_lo_hard
  sleep 1
  sample :drum_tom_lo_soft
  sleep 1
  sample :drum_tom_lo_hard
  sleep 0.5
  sample :drum_tom_lo_hard
  sleep 0.5
end


live_loop :agot do
  use_synth :prophet
  4.times do
    play_pattern_timed [:g4, :c4, :eb4, :f4], [1, 1, 0.5, 0.5]
  end
  4.times do
    play_pattern_timed [:g4, :c4, :e4, :f4], [1, 1, 0.5, 0.5]
  end
  
  play_pattern_timed [:g4, :c4, :eb4, :f4, :g4, :c4, :eb4, :f4], [3, 3, 0.5, 0.5, 2, 2, 0.5, 0.5]
  3.times do
    play_pattern_timed [:d4, :g3, :bb3, :c4], [1, 1, 0.5, 0.5]
  end
  play_pattern_timed [:d4, :g3, :bb3], [1, 1, 1], amp: 2
  
  play_pattern_timed [:f4, :bb3, :bb3, :d4, :f4, :bb3, :eb4, :d4], [3, 3, 0.5, 0.5, 2, 2, 0.5, 0.5]
  3.times do
    play_pattern_timed [:c4, :f3, :ab3, :bb3], [1, 1, 0.5, 0.5]
  end
  play_pattern_timed [:c4, :f3, :bb3], [1, 1, 1]
  
end

