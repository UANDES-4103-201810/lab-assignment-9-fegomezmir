class PersonController < ApplicationController

  def new
    @director = Director.new
    @actor = Actor.new
  end


  def create
    @director = Director.new(person_params)
    @actor = Actor.new(person_params)
  end


private
# Use callbacks to share common setup or constraints between actions.
def set_actor
  @actor = Actor.find(params[:id])
end

# Never trust parameters from the scary internet, only allow the white list through.
def person_params
  params.require(:person).permit(:first_name, :last_name, :birth_date, :description)
end
end