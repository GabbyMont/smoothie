def make
  play ingredients
  sleep (1)
end

def ingredients
  play(sliced_mango)
  play(ice)
  play(yogurt)
  play(milk)
  sleep(2)
end

def sliced_mango
  sample :bass_hard_c
  sleep(1)
end

def ice
  sample :drum_roll
  sleep(5)
end

def yogurt
  sample :perc_snap2
  sleep(2)
end

def milk
  sample :tabla_ghe8
  sleep(1)
end

def blend
  sample :mehackit_robot5
end

def chunks?()
  [true, false].sample
end

def drink(swallow)
  sample :glitch_robot1, rate: swallow
end

1.times do
  play make
  sleep(1)
  play blend
  if chunks?() == false
    play drink(43)
  end
end