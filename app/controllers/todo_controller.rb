class TodoController < ApplicationController
def index

  @todos = User.all.map {|work| work}
  render "todo/index"

end

def show
    id = params[:id]
    if(!id)
      render plain: User.order(:date&&:id).map {|todo| todo.to_string}.join("\n")
    else
    todo = User.find(id)
    render plain: todo.to_string
    end
  end
  def destroy
    id = params[:id]
    todo = User.find(id)
    todo.destroy
    redirect_to '/'
  end
  def update
    id= params[:id]
    todo = User.find(id)
    todo[:completed]=true
    if todo.save
    redirect_to "/"
    end
    
  end
  def home
    render "home"
  end
  def list
    render plain: User.order(:date&&:id).map {|todo| todo.to_string}.join("\n")
  end
  def insert
   task = params[:task]
   date = params[:date]
   completed = params[:completed]
   todo=User.create!(task: task,date: date,completed:false)
    response = "New todo is created with this id #{todo.id}"
    render plain: response
  end
  def create
    task = params[:task]
    date = params[:due_date]
    todo = User.create!(
      task: task,
      due_date: date,
      completed: false,
    )
    if todo  
        redirect_to "/"
    else
      render plain: "Fail"
    end
  end
end

