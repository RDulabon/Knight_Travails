class Vertex
  require './board.rb' 
  attr_accessor :vertex, :distance, :predecessor

  def initialize(vertex, distance=0, predecessor=nil) 
    @vertex = vertex   
    @distance = distance
    @predecessor = predecessor
  end
end