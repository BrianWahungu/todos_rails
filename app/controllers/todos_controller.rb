class TodosController < ApplicationController

    def get_todos
        render json: Todo.all
    end

    def create
        # title = todo_params[:title]
        # description = todo_params[:description]
        # priority = todo_params [:priority]

        # add todo in DB
        todo = Todo.create(todo_params)

        render json: todo

    end

    def update
        id = params[:id]
        todo = Todo.find(id.to_i)
        todo.update(todo_params)
        render json: { message: "updated Todo successfully" }
    end

    #TODO: Add delete method
    def delete
        todo = Todo.destroy_by(id: params[:id].to_i)
        render json: { message: "Todo deleted successfully" }
    end

    private

    def todo_params
        params.permit(:title, :description, :priority)
    end
end
