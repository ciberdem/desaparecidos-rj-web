module PersonSearcher
  # Methods to implement query according to specific attribute

  def get_sex_query param
    unless param.empty?
      "sex = '#{param}'"
    end
  end

  def get_skin_query param
    unless param.empty?
      "skin = '#{param}'"
    end
  end

  def get_hair_query param
    unless param.empty?
      "hair = '#{param}'"
    end
  end

  def get_eyes_query param
    unless param.empty?
      "eyes = '#{param}'" 
    end
  end

  def get_height_query param
    unless param.empty?
      "height = '#{param}'"
    end
  end

  def get_specificity_query param
    unless param.empty?
      "specificity = '#{param}'" 
    end
  end

  def get_name_query param
    unless param.empty?
      "name ILIKE '%#{param}%'" 
    end
  end

  def get_father_query param
    unless param.empty?
      "father ILIKE '%#{param}%'" 
    end
  end

  def get_mother_query param
    unless param.empty?
      "mother ILIKE '%#{param}%'" 
    end
  end

  def get_age_query param
    unless param.empty?

      case param
      when 'até 18 anos'
        'age <= 18'
      when 'de 19 até 30 anos'
        'age >= 19 AND age <= 30'
      when 'de 31 até 45 anos'
        'age >= 31 AND age <= 45'
      when 'de 46 até 65 anos'
        'age >= 46 AND age <= 65'
      when 'acima de 65 anos'
        'age > 65'
      end

    end      
  end
end