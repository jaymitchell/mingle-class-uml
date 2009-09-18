class ClassUml

  def initialize(parameters, project, current_user)
    @parameters = parameters
  end
    
  def execute
    "<img src='http://yuml.me/diagram/scruffy/class/#{URI.escape(@parameters['text'])}'/>"
  end
  
  def can_be_cached?
    true
  end
  
end

