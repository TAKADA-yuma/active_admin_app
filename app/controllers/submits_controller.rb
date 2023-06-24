class SubmitsController < ApplicationController
    
    def index
        @submits = Submit.all
        @submit = Submit.new
        @date = Date.today
    end
    
    def create
        @submit = Submit.new(submit_params)
        @submit.save
        redirect_to root_path
    end

    def destroy
        # binding.pry
        @submit = Submit.find(params[:id])
        @submit.destroy
        redirect_to root_path
    end

    def submit_params
        params.require(:submit).permit(:question, :date, :answer).merge(user_id: current_user.id)
    end

    def permitted_params
        params.permit(:submit => [:answer])
  
        # 以下の書き方だとエラーになる
        # param is missing or the value is empty: fruit
        # params.require(:fruit).permit(:name)
    end

end
