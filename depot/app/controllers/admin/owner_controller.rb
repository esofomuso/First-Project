class Admin::OwnerController < ApplicationController
  def index
    list
    render :action => 'list'
  end

  # GETs should be safe (see http://www.w3.org/2001/tag/doc/whenToUseGet.html)
  verify :method => :post, :only => [ :destroy, :create, :update ],
         :redirect_to => { :action => :list }

  def list
    @owners = Owner.find(:all, :order => "name DESC")
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(params[:owner])
    if @owner.save
      flash[:notice] = 'Owner was successfully created.'
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @owner = Owner.find(params[:id])
  end

  def update
    @owner = Owner.find(params[:id])
    if @owner.update_attributes(params[:owner])
      flash[:notice] = 'Owner was successfully updated.'
      redirect_to :action => 'show', :id => @owner
    else
      render :action => 'edit'
    end
  end

  def destroy
    Owner.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
end
