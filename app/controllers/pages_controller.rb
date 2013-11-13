class PagesController < ApplicationController
  def home
  end

  def action
  end

  def all
    @all = Pin.all + TextPin.all
    @all.sort! {|a, b| b.created_at <=> a.created_at}
  end
end
