class Bottles
  def verse(num)
    if num > 2
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n"\
      "Take one down and pass it around, #{num - 1} bottles of beer on the wall.\n"\
    elsif num == 2
      "#{num} bottles of beer on the wall, #{num} bottles of beer.\n"\
      "Take one down and pass it around, #{num - 1} bottle of beer on the wall.\n"\
    elsif num == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n"\
      "Take it down and pass it around, no more bottles of beer on the wall.\n"\
    elsif num == 0
      "No more bottles of beer on the wall, no more bottles of beer.\n"\
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"\
    end
  end

  def verses(start, stop)
    song = []
    while start >= stop
      song.push(verse(start))
      start -= 1
    end
    song.join("\n")
  end

  def song
    verses(99, 0)
  end
end
