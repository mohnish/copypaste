class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :update, :destroy]

  def show
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      render status: :created
    else
      render status: :unprocessable_entity
    end
  end

  def update
    if @entry.update(entry_params)
      render status: :ok
    else
      render status: :unprocessable_entity
    end
  end

  def destroy
    @entry.destroy
    head :no_content
  end

  private
    def set_entry
      @entry = Entry.find_by(id: params[:id])
    end

    def entry_params
      params.permit(:id, :title, :content)
    end
end
