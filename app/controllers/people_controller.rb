class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new    
  end

  def create
    unless person_params.values.all?(&:empty?)
      Person.create(person_params)
    end

    redirect_to desaparecidos_path
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    
    if @person.update(person_params)
      redirect_to desaparecidos_path
    else
      render 'edit'
    end
  end

  def search
    @person = Person.new
  end

  def filter
    @people = Person.search(person_params)
    render 'index'
  end

  def destroy
    Person.find(params[:id]).destroy
    redirect_to desaparecidos_path
  end

  def generate_poster
    
  end

  private

    def person_params
      params.require(:person).permit(
        :name, :missing_date, :place, :sex, :age, :height, :father, :mother, :skin, :hair, :eyes, :specificity, :photo
      )
    end
end