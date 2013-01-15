class TasksController < ApplicationController
  def index
  end

  def show
    Wintask.perform("bryankowens@gmail.com")
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
