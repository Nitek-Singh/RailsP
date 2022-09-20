class McQuestionsController < ApplicationController

    def index
            questions = McQuestion.all
             respond_to do |format|
                 format.html { render :index, locals: { questions: questions } }
             end
         end

     def show
            question = McQuestion.find(params[:id])
            respond_to do |format|
               format.html { render :show, locals: { question: question } }
            end
        end

        def new
            question = McQuestion.new
            respond_to do |format|
              format.html { render :new, locals: { question: question } }
            end
          end

          def create
            # new object from params
            question = McQuestion.new(params.require(:mc_question).permit(:question, :answer, :distractor_1, :distractor_2))

            # respond_to block
            respond_to do |format|
                format.html do
              # if question saves
              if question.save
                flash[:success] = "Question saved successfully"
                redirect_to mc_questions_url
                
               else
                # error message
                flash.now[:error] = "Error: Question could not be saved"
                render :new, locals: { question: question }
                # render new
          end
        end
    end

    end

    def edit
        question = McQuestion.find(params[:id])
        respond_to do |format|
          format.html { render :edit, locals: { question: question } }
        end
      end

      def update
        question = McQuestion.find(params[:id])
        respond_to do |format|
          format.html do
            if question.update(params.require(:mc_question).permit(:question, :answer, :distractor_1, :distractor_2))
              flash[:success] = 'Question updated successfully'
              redirect_to mc_questions_url

            else
              flash.now[:error] = 'Error: Question could not be updated'
              render :edit, locals: { question: question }

            end
          end
      end
    end

       def destroy
        question = McQuestion.find(params[:id])
        question.destroy
          respond_to do |format|
             format.html do
             flash[:success] = 'Question removed successfully'
             redirect_to mc_questions_url
        end
      end
    end

end
