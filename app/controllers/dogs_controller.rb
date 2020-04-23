class DogsController < ApplicationController

    def index
        @dogs = Dog.all
        render json: @dogs
    end

    def show
        @dog = Dog.find(params[:id])
        render json: @dog
    end

    def create
        @dog = Dog.create(
            name: params[:name],
            age: params[:age],
            breed: params[:breed]
        )
        render json: @dog
    end

    def update
        @dog = Dog.update(
            name: params[:name],
            age: params[:age],
            breed: params[:breed]
        )
        render json: @dog
    end

    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy
        render json: {message: "Entry has been deleted."}
    end
end
