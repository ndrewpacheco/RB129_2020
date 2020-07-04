class HockeyPlayer

  def initialize(weight, height, skate_size)
    @weight = weight
    @height = height
    @skate_size = skate_size
  end

  def skate
    "He skates"
  end

  def shoot
    "He shoots"
  end

  def deke
    "He dekes"
  end
end

matz = HockeyPlayer.new(170, 70, 10)
wayne = HockeyPlayer.new(150, 65, 9)