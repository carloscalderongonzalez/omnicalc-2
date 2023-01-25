class MathController < ApplicationController
  def subtract_results
    #params = {""=>X, ""=> Y}
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @second - @first
    render({:template => "math_templates/subtraction.html.erb"})
  end

  def subtract_form
    #params = {""=>X, ""=> Y}

    render({:template => "math_templates/subtraction_template.html.erb"})
  end

  def add_form
    render({:template => "math_templates/add_template.html.erb"})
  end

  def add_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @second + @first
    render({:template => "math_templates/add.html.erb"})

  end

  def multiply_form
    render({:template => "math_templates/multiply_template"})
  end

  def multiply_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result = @second * @first
    render({:template => "math_templates/multiply.html.erb"})

  end

  def divide_form
    render({:template => "math_templates/divide_template"})
  end

  def divide_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @result =  (@first / @second).round(1)
    render({:template => "math_templates/divide.html.erb"})

  end

end
