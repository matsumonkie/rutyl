Rutyl
====

Rutyl is a simple gem gathering all my ruby utilities tools.

## CMap

I do not like ruby map behaviour that return nil by default

    (0..5).map  { |e| e if e > 2 } => [nil, nil, nil, 3, 4, 5]

cmap simply does the same but add a compact to the array so that it gets ride of nil value

    (0..5).cmap { |e| e if e > 2 } => [3, 4, 5]

## Instance variables from binding

Instance variables from binding is inspired from another project I cannot remind of (but I will be looking for it)
It is an attempt to provide scala syntax for instance variable. 
Ruby behaves like that :

    Class Car       
      def initialize(color, speed)
        @color = color
        @speed = speed
      end
    end

This behaviour is not DRY at all. Let's DRY it :
  
    Class Car  
      include Rutyl
     
      def initialize(color, speed)
        ivars_from binding
      end
    end

You can simply do :

    Car.new("green", 10) => <Car @color="green", @speed=10>


