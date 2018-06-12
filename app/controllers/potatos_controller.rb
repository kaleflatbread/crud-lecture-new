class PotatosController < ApplicationController


    def index
      @potatos = Potato.all
    end

    def show
      @potato = Potato.find(params[:id])
    end

    def new
      @potato = Potato.new
    end

    def edit
      @potato = Potato.find(params[:id])
    end

    def create
      @potato = Potato.create(potato_params)
      flash[:message] = "Successfully created potato."
      redirect_to @potato
    end

    def update
      @potato = Potato.update(potato_params)
      redirect_to potato_path(@potato)
    end

    def destroy
      @potato = Potato.find(params[:id]).destroy
      redirect_to potatos_path
    end

    private

    def potato_params()
      params.require(:potato).permit(:name, :eyes)
    end

end
