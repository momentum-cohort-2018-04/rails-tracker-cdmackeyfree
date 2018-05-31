class Api::V1::NotesController < ApplicationController

    def index
        @dog = Dog.find(params[:dog_id])
        @notes = @dog.notes
        render json: @notes
    end

    def create
      @note= Note.new(note_params)
      if @note.save!
        render json: @note
      else
        render json: @note.errors, status: :unprocessable_entity
      end
    end
  
   
    def update
      @dog = Dog.find(params[:dog_id])
      @note = @dog.notes.find(params[:id])
      if @dog.update(dog_params)
        render json: @dog
        else
        render json: @dog.errors, status: :unprocessable_entity
      end
    end
      
    def destroy
        @dog = Dog.find(params[:dog_id])
        @note = @dog.notes.find(params[:id])
        if @dog.destroy
          @note.destroy
        end
    end
    
    private
    
    def note_params
      params.require(:note).permit(:dog_id, :content)
    end

end