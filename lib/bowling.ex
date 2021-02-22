defmodule Bowling do

  def score([]) do
    0
  end

  def score([frame|rest]) do
    first = hd(frame)
    second = hd(tl(frame))



    if (first == 10) do
      bonus = hd(hd(rest)) + hd(tl(hd(rest)))
      first + bonus + score(rest)
    else
      if (first + second == 10) do
      bonus = hd(hd(rest))
      first + second + bonus + score(rest)
      # first + second + score(hd(rest))
    else
       first + second + score(rest)
    end

    end
  end
end
