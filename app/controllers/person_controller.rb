class PersonController < ApplicationController

  def index
    @actors=Actor.all
  end

  def persons
    @actors = Actor.all
    @directors = Director.all
  end

  def actors
    @actors = Actor.all
    @directors = Director.all

  end


  def new
    @director = Director.new
    @actor = Actor.new
  end


  def create
    type = params[:type]
    if type == "Director"
    @director = Director.create(first_name:params[:first_name], last_name:params[:last_name],birth_date:params[:birth_date], description:params[:description])
    respond_to do |format|
      if @director.save
        format.html { redirect_to @director, notice: 'Director was successfully created.' }
        format.json { render :show, status: :created, location: @director }
      else
        format.html { render :new }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
    else
      @actor = Actor.create(first_name: params[:first_name], last_name: params[:last_name], birth_date: params[:birth_date], description: params[:description])
      respond_to do |format|
        if @actor.save
          format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
          format.json { render :show, status: :created, location: @actor }
        else
          format.html { render :new }
          format.json { render json: @actor.errors, status: :unprocessable_entity }
        end
      end
      end

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