module PersonHelper
  def skin_options
    ['', 'Albino', 'Amarela', 'Branca', 'Negra', 'Parda', 'Vermelha']
  end

  def hair_options
    ['', 'Aço', 'Branco', 'Castanho claro', 'Castanho escuro', 'Com mexas ou faixas', 'Louro', 'Preto', 'Ruivo']
  end

  def eyes_options
    ['', 'Azuis', 'Castanhos claros', 'Castanhos escuros', 'Cinzentos', 'Desiguais na cor', 'Pretos', 'Verdes', 'Violetas']
  end

  def specificity_options
    ['', 'Tatuagem', 'Cicatriz', 'Amputação', 'Deficiência']
  end

  def age_options
    ['', 'até 18 anos', 'de 19 até 30 anos', 'de 31 até 45 anos', 'de 46 até 65 anos', 'acima de 65 anos']
  end

  def height_options
    ['', 'Anão', 'até 1,60', 'de 1,60 até 1,70', 'de 1,70 até 1,80', 'acima 1,80']
  end
end