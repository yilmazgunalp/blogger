class TagsController < ApplicationController

	before_filter :require_login, only: [:destroy]
def comment_params
  params.require(:tag).permit(:tag_name, :id)
end
def index
@tags=Tag.all
end	


def show
  @tag = Tag.find(params[:id])
end

def destroy
@tag=Tag.find(params[:id])
@tag.destroy
flash.notice = "Article '#{@tag.name}' celeted!"
redirect_to tags_path
end	


end
