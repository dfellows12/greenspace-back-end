class NotesController < ApplicationController
    def index
        notes = Note.all 
        render json: notes
    end

    def create
        note = Note.create(user_id: params[:note][:userId], user_plant_id: params[:note][:userPlantId], content: params[:note][:note])
        render json: note
    end

    def destroy
        note = Note.find(params[:note][:id])
        note.delete
        render json: note
    end
end
