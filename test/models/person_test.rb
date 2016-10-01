# test/models/user_test.rb
require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  def setup
    @person = Person.new
  end

  test 'valid person' do
    assert @person.valid?
  end

  test '#photo_url' do
    assert_equal '/images/person/defaul_photo.jpg', @person.photo_url
  end
end