class CommentsController < ApplicationController
  
  def edit
    @article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(params[:comment])
    @article = Article.find(params[:article_id])
    @comment.article = @article

    respond_to do |format|
      if @comment.save
        format.html { redirect_to article_url(@comment.article_id), notice: 'Comment was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { render action: "new" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])
    @article = Article.find(params[:article_id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to article_url(@comment.article_id), notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    article = Article.find(params[:article_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to article_url(article) }
      format.json { head :no_content }
    end
  end
end
