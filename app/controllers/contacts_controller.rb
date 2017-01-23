class ContactsController < ApplicationController

  def index
    @grid = ContactsGrid.new(params[:contacts_grid]) do |scope|
      scope.page(params[:page])
    end
  end

end

