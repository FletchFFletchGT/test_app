class TroopsController < ApplicationController
  # GET /troops
  # GET /troops.json
  def index
    @troops = Troop.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @troops }
    end
  end

  # GET /troops/1
  # GET /troops/1.json
  def show
    @troop = Troop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @troop }
    end
  end

  # GET /troops/new
  # GET /troops/new.json
  def new
    @troop = Troop.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @troop }
    end
  end

  # GET /troops/1/edit
  def edit
    @troop = Troop.find(params[:id])
  end

  # POST /troops
  # POST /troops.json
  def create
    @troop = Troop.new(params[:troop])

    respond_to do |format|
      if @troop.save
        format.html { redirect_to @troop, notice: 'Troop was successfully created.' }
        format.json { render json: @troop, status: :created, location: @troop }
      else
        format.html { render action: "new" }
        format.json { render json: @troop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /troops/1
  # PUT /troops/1.json
  def update
    @troop = Troop.find(params[:id])

    respond_to do |format|
      if @troop.update_attributes(params[:troop])
        format.html { redirect_to @troop, notice: 'Troop was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @troop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /troops/1
  # DELETE /troops/1.json
  def destroy
    @troop = Troop.find(params[:id])
    @troop.destroy

    respond_to do |format|
      format.html { redirect_to troops_url }
      format.json { head :ok }
    end
  end
end
