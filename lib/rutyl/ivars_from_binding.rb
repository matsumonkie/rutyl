module Rutyl

  # Add instance variable creation at runtime by defining them
  # as parameters in the constructor
  # ex:
  # Class Car  
  #   include Rutyl
  #   
  #   def initialize(color, speed)
  #     ivars_from binding
  #   end
  # end
  #
  # Car.new("green", 10) => <Car @color="green", @speed=10>
  #--------------------------------------------------------------------------------
  def ivars_from(binding)
    binding.eval('local_variables').each do |var|
      self.instance_variable_set("@#{var}", binding.eval("#{var}"))
    end
  end
end
