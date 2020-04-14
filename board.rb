class Board
  def initialize 
    @board = Array.new(8, "[ ]").map{ |row| Array.new(8, "[ ]")} 
    @row_label = [" 0", " 1", " 2", " 3", " 4", " 5", " 6", " 7"]
    @column_label = ["0", "1", "2", "3", "4", "5", "6", "7"]
  end 

  def build_board(origin=[0,0])
    print "\t"
    print @row_label.join("\t") 
    puts
    @board[origin[0]][origin[1]] = "[K]" 
    @board.each_with_index do |row, i|
      print @column_label[i]
      print "\t" 
      print row.join("\t")
      puts
      puts
    end 
  end
end 