class Api::V1::NotesController < ApplicationController

  def index
    notes = current_user.notes
    render json: NoteSerializer.new(notes).serializable_hash.to_json, status: :ok
  end

  def create
    note = current_user.notes.build(note_params)
    if note.save
      render json: NoteSerializer.new(note).serializable_hash.to_json, status: :created
    else
      render json: {errors: note.errors}, status: :unprocessable_entity
    end
  end

  def update
    note = Note.find_by(id: params[:id])
    note.update(note_params)
    render json: NoteSerializer.new(note).serializable_hash.to_json, status: :ok
  end

  def destroy
    note = current_user.notes.find_by(id: params[:id])
    note.destroy
    render json: {status: :ok}
  end

  private

  def note_params
    params.require(:note).permit(:content, :user_id, :podcast_api_id, :episode_api_id, :episode_timestamp)
  end
end

