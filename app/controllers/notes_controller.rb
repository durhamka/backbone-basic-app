class NotesController < ApplicationController
  helper_method :notes, :note
  def notes
    @_notes ||= Note.all
  end

  def note
    @note ||= notes.find(params[:id])
  end
end
