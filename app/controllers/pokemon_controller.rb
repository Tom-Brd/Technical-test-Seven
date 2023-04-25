class PokemonController < ApplicationController

  def index
    @pokemon = Pokemon.all
    render json: @pokemon
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    render json: @pokemon
  end

  def checkout
    @pokemon = Pokemon.find(params[:id])
    @user = current_user
    if @user.balance >= @pokemon.price
      render json: @pokemon
    else
      render json: {error: "You don't have enough money to buy this pokemon"}
    end
  end

  def buy
    @pokemon = Pokemon.find(params[:id])
    @user = current_user
    if @user.balance >= @pokemon.price
      @user.decrement!(:balance, @pokemon.price)
      @pokemon.update!(userId: @user.id)
      Transaction.create!(transactionId: Transaction.last.transactionId + 1, action: 0, userId: @user.id, pokemonId: @pokemon.id)
      render json: @pokemon
    else
      render json: {error: "You don't have enough money to buy this pokemon"}
    end
  end

  def sell
    @pokemon = Pokemon.find(params[:id])
    @user = current_user
    if @pokemon.userId == @user.id
      @user.increment!(:balance, @pokemon.price)
      @pokemon.update!(userId: nil)
      Transaction.create!(transactionId: Transaction.last.transactionId + 1, action: 1, userId: @user.id, pokemonId: @pokemon.id)
      render json: @pokemon
    else
      render json: {error: "You don't own this pokemon"}
    end
  end

end
