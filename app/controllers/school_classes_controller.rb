class SchoolClassesController < ApplicationController

  def new
    # dont really understand why this
    @schoolclass = SchoolClass.new

  end

  def show
    @schoolclass = SchoolClass.find(params[:id])

  end

  def edit
		# @post = Post.find(params[:id])
    @schoolclass = SchoolClass.find(params[:id])

	end



def create
  @schoolclass = SchoolClass.new(schoolclass_params(:title, :number))
  @schoolclass.save
  redirect_to school_class_path(@schoolclass)
end

def update
	  # @post = Post.find(params[:id])
    @schoolclass = SchoolClass.find(params[:id])

	  # @post.update(title: params[:title], description: params[:description])
    @schoolclass.update(schoolclass_params(:title, :number))
    #
	  # redirect_to post_path(@post)
    redirect_to school_class_path(@schoolclass)

	end


def schoolclass_params(*args)
  params.require(:school_class).permit(*args)
end

end
