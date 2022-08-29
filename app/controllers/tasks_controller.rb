# frozen_string_literal: true

class TasksController < ApplicationController
  # def index
  #     # render html: "This is index action of Tasks controller"
  #     render
  # end
  def index
    # @tasks = Task.all
    # no need of instance variable to tasks
    tasks = Task.all
    render status: :ok, json: { tasks: tasks }
  end
end
