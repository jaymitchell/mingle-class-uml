require File.join(File.dirname(__FILE__), 'unit_test_helper')

class ClassUmlTest < Test::Unit::TestCase
  
  FIXTURE = 'sample'
  
  def test_macro_contents
    class_uml = ClassUml.new(nil, project(FIXTURE), nil)
    result = class_uml.execute
    assert result
  end
  
  def test_macro_contents_with_a_project_group
    class_uml = ClassUml.new(nil, [project(FIXTURE), project(FIXTURE)], nil)
    result = class_uml.execute
    assert result
  end

end