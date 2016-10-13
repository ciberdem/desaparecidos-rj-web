class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new    
  end

  def create
    if person_params.values.all?(&:empty?)
      redirect_to root_path  
    else
      @person = Person.create(person_params)
      redirect_to desaparecidos_path
    end
  end

  def search
    
  end

  def destroy
    
  end

  private

    def person_params
      params.require(:person).permit(
        :name, :sex, :age, :height, :father, :mother, :skin, :hair, :eyes, :specificity, :photo
      )
    end
end