class InvoiceLinesController < ApplicationController
  # GET /invoice_lines
  # GET /invoice_lines.json
  def index
    @invoice_lines = InvoiceLine.all

    render json: @invoice_lines
  end

  # GET /invoice_lines/1
  # GET /invoice_lines/1.json
  def show
    @invoice_line = InvoiceLine.find(params[:id])

    render json: @invoice_line
  end

  # POST /invoice_lines
  # POST /invoice_lines.json
  def create
    @invoice_line = InvoiceLine.new(params[:invoice_line])

    if @invoice_line.save
      render json: @invoice_line, status: :created, location: @invoice_line
    else
      render json: @invoice_line.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invoice_lines/1
  # PATCH/PUT /invoice_lines/1.json
  def update
    @invoice_line = InvoiceLine.find(params[:id])

    if @invoice_line.update(params[:invoice_line])
      head :no_content
    else
      render json: @invoice_line.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invoice_lines/1
  # DELETE /invoice_lines/1.json
  def destroy
    @invoice_line = InvoiceLine.find(params[:id])
    @invoice_line.destroy

    head :no_content
  end
end
