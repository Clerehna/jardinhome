class PagesController < ApplicationController
  def home
    @prestations = Prestation.all
  end
end
