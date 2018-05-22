class PostsController < ApplicationController
  def index
    if !current_user
      redirect_to new_user_session_path
    end
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.decimalconversion = conversion(@post)
    @post.fullbill = total(@post)
    @post.monthlypayment = paymentpermonth(@post)
    p "monthly payment #{@post.monthlypayment}"
    p "fraction #{ @post.fraction}"
    @post.fractionalpayment = fractionalamount(@post)
    @post.adjustedmonthlypayment = fractionaladdedtomonthly(@post)
    @post.numofmonthsyoupay = numberofmonthsyouenduppaying(@post)
    if @post.save
        redirect_to @post
      else
        redirect_to 'new'
      end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
      redirect_to posts_path
  end


private
  def update_params
    params.require(:post).permit(:totalloan, :monthlypayment, :interestrate, :decimalconversion, :fraction, :fractionalpayment, :fullbill, :youpay, :numofmonthsyoupay, :numofmonthsfullloan, :adjustedmonthlypayment, :title, :user_id)
  end

  def post_params
    params.require(:post).permit(:totalloan, :monthlypayment, :interestrate, :decimalconversion, :fraction, :fractionalpayment, :fullbill, :youpay, :numofmonthsyoupay, :numofmonthsfullloan, :adjustedmonthlypayment, :title, :user_id)
  end

end
