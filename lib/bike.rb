class Bike
  def initialize(n)
    @time = n
  end

  def cost
    if @time <= 30
      return 5
    end

    if @time <= 240 
      if @time % 30 == 0
        (@time / 30 - 1) * 10 + 5
      else
        (@time / 30) * 10 + 5
      end
    elsif @time > 240 && @time <= 480
      if @time % 30 == 0
        75 + ((@time - 240) / 30) * 20
      else
        75 + (((@time - 240) / 30) + 1) * 20
      end
    else 
      if @time % 30 == 0
        155 + ((@time - 480) / 30 ) * 40
      else
        155 + (((@time - 480) / 30 ) + 1 ) * 40
      end
    end
  end
  def money
    if @time <= 240 && @time % 30 == 0
      (@time / 30 ) * 10
    else
      (@time / 30 + 1)  * 10
    end
    if @time > 240 and @time <= 480 && @time % 30 == 0
     80 + ((@time - 240) / 30 ) * 20
    else
     80 + ((@time - 240) / 30 + 1)  * 20
    end
  end 
end


