#abbiamo fatto entrare la parte melodica della voce direttamente nel bridge
use_bpm 153

$list = [0.8, 0.9, 1, 1.1, 1.2]

# CHORDS MAIN GUITAR
accordo1 = [:e5, :g4, :e4]
accordo2 = [:e5, :a4, 66]
accordo3 = [:a5, 73, :a4]
accordo4 = [78, :b4, :g4]

# CHORDS SECOND GUITAR
accordo5 = [:g5, :e5, :d5]
accordo6 = [:g4, :d5, :e5]
accordo7 = [:a4, :e5, 78]
accordo8 = [:a5, :e5, 73]

#CHORDS BRIDGE
accordo9 = [:a5, :cs4, :e4, :a4, :a3, :b4, :cs5, :e5]
accordo10 = [:b4, :b5, :d4, :d5, :fs4, :fs5, :a4, :b3]
accordo11 = [:g4, :g5, :b4, :b5, :d4, :d5, :fs4, :g3]

# DRUMS
define :kick_snare do
  sample :bd_tek, amp: 3  # Kick drum
  sleep 0.5
  sample :bd_tek, amp: 3  # Kick drum
  sleep 0.5
  with_fx :reverb, room: 0.1, mix: 0.3 do
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list), room: 1, decay: 6, release: 8
    sleep 0.75
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list)
    sleep 1.25
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list), room: 1
    sleep 0.75
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list)
    sleep 1.25
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list), room: 1
    sleep 0.75
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list)
    sleep 1.25
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list), room: 1, decay: 6, release: 8
    sleep 0.75
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list)
    sleep 0.25
  end
  
  sample :bd_tek, amp: 3 # Kick drum
  sleep 1
  with_fx :reverb, room: 0.1, mix: 0.3 do
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list), room: 1, decay: 6, release: 10
    sleep 0.75
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list)
    sleep 1.25
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list), room: 1
    sleep 0.75
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list)
    sleep 1.25
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list), room: 1
    sleep 0.75
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list)
    sleep 1.25
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list), room: 1, decay: 6, release: 8
    sleep 0.75
    sample :drum_snare_hard, sustain: 0.1, amp: choose($list)
    sleep 0.25
  end
end

define :hihat do
  sample :drum_cymbal_closed, rate: 4, sustain: 0.03, amp: 0.6,  room: 1, pan: 0.2
  sleep 0.5
end

define :hihat2 do
  sample :hat_metal, rate: 4, sustain: 0.03, amp: 0.5,  room: 1, pan: -0.8
  sleep 0.5
end

# ARPEGGI MAIN GUITAR
define :play_arpeggio do |note|
  use_synth :piano
  with_fx :reverb, amp: 2, room: 1, attack: 0.6, decay: 4, pan: 0.6 do
    for i in 0..2 do
      play note[i]
      sleep 0.5
    end
  end
end

# ARPEGGI SECOND GUITAR
define :play_2nd_arpeggio do |note|
  use_synth :pluck
  with_fx :reverb, amp: 1.7, room: 0.4, pan: -1, attack: 10, decay: 6, release: 3 do
    for i in 0..2 do
      play note[i]
      sleep 0.5
    end
    
    play note[0]
    sleep 0.5
    play note[2]
    sleep 0.5
  end
end

define :play_3rd_arpeggio do |note|
  use_synth :pluck
  with_fx :reverb, amp: 1.7, room: 0.4, pan: -1, attack: 10, decay: 6, release: 3 do
    for i in 0..2 do
      play note[i]
      sleep 0.5
    end
    
    play note[0]
    sleep 0.5
    play note[1]
    sleep 0.5
  end
end


define :play_4th_arpeggio do |note|
  use_synth :pluck
  with_fx :reverb, amp: 1.7, room: 0.4, pan: -1, attack: 10, decay: 6, release: 3 do
    for i in 0..2 do
      play note[i]
      sleep 0.5
    end
    
    play note[1]
    sleep 0.5
    play note[2]
    sleep 0.5
  end
end

# ARPEGGI MAIN GUITAR
define :bass do
  2.times do
    use_synth :subpulse
    with_fx :reverb, amp: 0.8, room: 0.2 do
      play :e3, sustain: 0.4, release: 0.2
      sleep 0.5
      play :e3, sustain: 0.4, release: 0.2
      sleep 0.5
      play :g3, sustain: 0.9, release: 0.2
      sleep 1
      play :d4, sustain: 0.9, release: 0.2
      sleep 1
      play :e4, sustain: 7, release: 10
      sleep 13
      play :fs3, sustain: 10, release: 10
      sleep 16
      play :a3, sustain: 12, release: 5
      sleep 14
      play :fs3, sustain: 0.4, release: 0.2
      sleep 0.5
      play :fs3, sustain: 0.4, release: 0.2
      sleep 0.5
      play :g3, sustain: 0.9, release: 0.2
      sleep 1
      play :e3, sustain: 0.9, release: 0.2
      sleep 1
      play :fs3, sustain: 0.9, release: 0.2
      sleep 1
      play :e3, sustain: 0.9, release: 0.2
      sleep 1
      play :e4, sustain: 10, release: 4
      sleep 13
    end
  end
end

#BRIDGE

#entra dopo 148
define :bass_pattern do |nota|
  play nota, sustain: 0.5, release: 1, amp: 0.7, room: 0.2
  sleep 1
  10.times do
    play nota, sustain: 1, release: 1, amp: 0.7, room: 0.2
    sleep 1.5
  end
end

define :guitar_bridge_pattern do |accordo|
  for i in 0..128
    play accordo[choose([0, 1, 2, 3, 4, 5, 6, 7])], room: 0.6, amp: 4.5
    sleep 0.125
  end
end

#--------------------------------------------------------------------------------
#STICKS
in_thread do
  for i in 0..3 do
    sample :drum_cowbell, amp: 5, hpf_attack: 10
    sleep 1
  end
end

# DRUMS
in_thread do
  sleep 4
  256.times do
    hihat
  end
end

in_thread do
  sleep 4
  256.times do
    hihat2
  end
end

in_thread do
  sleep 4
  8.times do #sarebbe 9 ma la facciamo finire prima
    kick_snare
  end
end

# MAIN GUITAR
in_thread do
  sleep 20
  2.times do
    10.times do
      play_arpeggio(accordo1)
    end
    
    11.times do
      play_arpeggio(accordo2)
    end
    
    11.times do
      play_arpeggio(accordo3)
    end
    
    10.times do
      play_arpeggio(accordo4)
    end
    
    play :d5, amp: 2, room: 0.4
    sleep 0.5
    play :g4, amp: 2, room: 0.4
    sleep 0.5
  end
end

# SECOND GUITAR
in_thread do
  sleep 68 # start with accordo4
  6.times do
    play_2nd_arpeggio(accordo5)
  end
  
  play :g5, amp: 1.7, room: 0.4
  sleep 0.5
  play :e5, amp: 1.7, room: 0.4
  sleep 0.5
  
  6.times do
    play_2nd_arpeggio(accordo6)
  end
  
  play :g4, amp: 1.7, room: 0.4
  sleep 0.5
  play :d5, amp: 1.7, room: 0.4
  sleep 0.5
  
  play :e5, amp: 1.7, room: 0.4
  sleep 0.5
  play :a4, amp: 1.7, room: 0.4
  sleep 0.5
  play :e5, amp: 1.7, room: 0.4
  sleep 0.5
  
  5.times do
    play_3rd_arpeggio(accordo7)
  end
  
  play :a4, amp: 1.7, room: 0.4
  sleep 0.5
  play :e5, amp: 1.7, room: 0.4
  sleep 0.5
  play 78
  sleep 0.5
  play 73
  sleep 0.5
  
  play :e5, amp: 1.7, room: 0.4
  sleep 0.5
  play 73
  sleep 0.5
  play :e5, amp: 1.7, room: 0.4
  sleep 0.5
  
  4.times do
    play_4th_arpeggio(accordo8)
  end
  
  play :a5, amp: 1.7, room: 0.4
  sleep 0.5
  
  6.times do
    play_2nd_arpeggio(accordo5)
  end
  
  play :g5, amp: 1.7, room: 0.4
  sleep 0.5
  play :e5, amp: 1.7, room: 0.4
  sleep 0.5
end

#BASS
in_thread do
  sleep 20
  bass
end

in_thread do
  sleep 146.5 #entra melodia
  use_synth :blade
  with_fx :level, amp: 2.8 do
    play :d5
    sleep 0.5
    play :d5
    sleep 0.5
    play :d5
    sleep 0.5
    play :cs5
    sleep 0.5
    play :d5, sustain: 0.5, release: 0.5
    sleep 1
    play :d5
    sleep 0.5
    play :cs5, sustain: 4.5, release: 3
    sleep 11.5
    play :b4
    sleep 0.5
    play :fs5, sustain: 1.5, release: 1
    sleep 2
    play :fs5, sustain: 1, release: 1
    sleep 1.5
    play :b4, sustain: 3.5, release: 3
    sleep 14
    play :a4
    sleep 0.5
    play :cs5, sustain: 0.5, release: 0.5
    sleep 1
    play :cs5
    sleep 0.5
    play :cs5, sustain: 1, release: 1
    sleep 1.5
    play :d5
    sleep 0.5
    play :cs5
    sleep 0.5
    play :d5
    sleep 0.5
    play :cs5, sustain: 2, release: 2
    sleep 2.5
    play :b4
    sleep 0.5
    play :a4, sustain: 3, release: 2
    sleep 6
    play :b4
    sleep 0.5
    play :fs5, sustain: 1.5, release: 0.5
    sleep 2
    play :fs5, sustain: 0.5, release: 0.5
    sleep 1
    play :b4, sustain: 0.5, release: 0.5
    sleep 1
    play :b4, sustain: 3, release: 2
    sleep 12
    play :b4, sustain: 1.5, release: 0.5
    sleep 2
    play :b4, sustain: 0.5, release: 0.5
    sleep 1
    play :cs5, sustain: 0.5, release: 0.5
    sleep 1
    play :b4, sustain: 0.5, release: 0.5
    sleep 1
    play :a4, sustain: 2.5, release: 1.3
    sleep 11
    play :a4, sustain: 1.5, release: 1
    sleep 2
    play :a4, sustain: 0.5, release: 0.5
    sleep 1
    play :b4, sustain: 0.5, release: 0.5
    sleep 1
    play :a4
    sleep 0.5
    play :fs4
    sleep 0.5
    play :g4, sustain: 2.5, release: 1.5
    sleep 13
  end
end

in_thread do
  use_synth :subpulse
  sleep 148
  play :a3, sustain: 15, release: 3, amp: 0.7
  sleep 16
  play :b3, sustain: 15, release: 3, amp: 0.7
  sleep 16
  play :a3, sustain: 15, release: 3, amp: 0.7
  sleep 16
  play :g3, sustain: 3, release: 2, amp: 0.7
  sleep 4
  play :fs3, sustain: 3, release: 2, amp: 0.7
  sleep 4
  play :fs3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :e3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :fs3, sustain: 3.5, release: 1, amp: 0.7
  sleep 4
  play :fs3, sustain: 3.5, release: 1, amp: 0.7
  sleep 4
  play :e3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :fs3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :e3, sustain: 3, release: 2, amp: 0.7
  sleep 4
  play :fs3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :e3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :fs3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :e3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :fs3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :e3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :fs3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :e3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :fs3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
  play :e3, sustain: 1.5, release: 1, amp: 0.7
  sleep 2
end

in_thread do
  use_synth :fm
  sleep 148
  bass_pattern(:cs3)
  bass_pattern(:b2)
  bass_pattern(:cs3)
  bass_pattern(:b2)
  bass_pattern(:a2)
  bass_pattern(:g2)
end

in_thread do
  use_synth :kalimba
  sleep 148
  guitar_bridge_pattern(accordo9)
  guitar_bridge_pattern(accordo10)
  guitar_bridge_pattern(accordo9)
  guitar_bridge_pattern(accordo10)
  guitar_bridge_pattern(accordo9)
  guitar_bridge_pattern(accordo11)
end