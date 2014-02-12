module Rutyl
  
  # Add a normal 'map' behaviour for enumerables
  # ex:
  # (0..5).map  { |e| e if e > 2 } => [nil, nil, nil, 3, 4, 5]
  # (0..5).cmap { |e| e if e > 2 } => [3, 4, 5]
  #--------------------------------------------------------------------------------
  Enumerable.class_eval do
    def cmap(&block)
      map(&block).compact
    end
  end
end
