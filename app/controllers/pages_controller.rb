class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

def welcome
  @header = "This is the welcome page"
end

def kitten
end

def kittens
end

def set_kitten_url
  requested_size = params[:size] || 200
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
end

def contest
  flash[:alert]= "Sorry, the contest has ended."
  redirect_to '/welcome'
end

def secrets
  word = params[:magic_word]
  if word != "code"
    flash[:alert] = "Sorry, youre not authorized to see that page!"
    redirect_to '/welcome'
  else
    flash[:alert] = "Correct answer!"
  end
end

end
