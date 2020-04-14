class Graph
  require './board.rb' 
  require './vertex.rb'
  attr_accessor :origin

  MOVES = [
    [2,1],
    [2,-1],
    [1,2],
    [1,-2],
    [-2,1],
    [-2,-1],
    [-1,2],
    [-1,-2] 
  ]

  def initialize(root)
    @root = Vertex.new(root)
    @queue = [@root]
    @adjacency_list = [] 
  end

  def id_children(origin=@root) 
    MOVES.map do |x,y| 
      if (origin.vertex[0] + x >= 0 && origin.vertex[1] + y >= 0) &&
        (origin.vertex[0] + x <= 7 && origin.vertex[1] + y <= 7)
        @queue << Vertex.new([origin.vertex[0] + x, origin.vertex[1] + y], 
          origin.distance + 1, origin) 
      end
    end 
    @queue 
  end 

  def shortest_path(fin, origin=@root) 
    node = @queue.shift
    @adjacency_list << node.vertex 
    id_children(node)
    @queue.each{ |x| @queue.delete(x) if visited?(x.vertex)}
    until node.vertex == fin 
        shortest_path(fin, node) 
        exit if @adjacency_list.include?(fin) 
    end 
    puts "You can make the move in #{node.distance} moves! Here is your path:"  
    find_path(node)
    @path.each do |x| 
      p x 
      Board.new.build_board(x) 
      sleep(0.5) 
    end 
  end

  def visited?(square)
    @adjacency_list.include?(square) 
  end  
  
  def find_path(node, path=[node.vertex])
    @path = path 
    if node.predecessor == nil
      node
    else
      @path<<node.predecessor.vertex 
      find_path(node.predecessor, path) 
    end 
    @path.reverse! 
  end
end