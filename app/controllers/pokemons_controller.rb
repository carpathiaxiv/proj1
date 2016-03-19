class PokemonsController < ApplicationController
 
  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.update_attributes(:trainer_id => current_trainer.id, :level => 1, :health => 100)
    if @pokemon.save
      redirect_to(trainer_path(id: current_trainer.id))
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to(trainer_path(id: current_trainer.id))
    end
  end


	def capture
		# redirect_to "root"
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer_id=current_trainer.id
    @pokemon.save
  	redirect_to (:back)
  	
  end

  def damage
  	@pokemon= Pokemon.find(params[:id])
  	@pokemon.health=@pokemon.health-10
  	if @pokemon.save
  		redirect_to (:back)
  	end
  end

  def pokemon_params
    params.require(:pokemon).permit(:name, :trainer_id, :level, :health)
  end

end