require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  def setup
    @person = Person.new
    
    @person_with_attributes = Person.new(
             name: 'John Doe',
              age: 19,
           height: 1.70,
             skin: 'Branca',
             eyes: 'Cinzentos',
              sex: 'Masculino',
           father: 'Jax Doe',
           mother: 'Jane Doe',
             hair: 'Preto',
      specificity: 'Cicatriz',
            photo: '/uploads/person/photo/1/photo.jpg'
    )
  end

  test 'valid empty person' do
    assert @person.valid?
  end

  test 'valid person with attributes' do
    assert @person_with_attributes.valid?
  end

  test '#photo_url default' do
    assert_equal '/uploads/person/photo/default_photo.jpg', @person.photo_url
  end
end