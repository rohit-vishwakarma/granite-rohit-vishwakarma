# frozen_string_literal: true

class TasksController < ApplicationController
  # def index
  #     # render html: "This is index action of Tasks controller"
  #     render
  # end
  def index
    tasks = Task.all
    render status: :ok, json: { tasks: tasks }
  end

  def create
    task = Task.new(task_params)
    task.save!
    respond_with_success(t("successfully_created"))
  end

  def show
    task = Task.find_by!(slug: params[:slug])
    respond_with_json({ task: task })
  end

  private

    def task_params
      params.require(:task).permit(:title)
    end
end
