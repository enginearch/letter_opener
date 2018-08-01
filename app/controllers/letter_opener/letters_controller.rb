module LetterOpener
  class LettersController < ApplicationController
    def index
      @letters = Letter.all
    end

    def show
      @letter = Letter.find_by_name(params[:id])
      respond_with do |format|
       format.html { render @letter.contents(params[:style]) }
      end
    end
  end
end