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
    @invoice_line = InvoiceLine.new(invoice_line_params)

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

    if @invoice_line.update(invoice_line_params)
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

  protected

  def invoice_line_params
    params.require(:invoice_line).permit(
      :description,
      :units,
      :unit_price,
      :line_amount,
      :status,
      :invoice_id
    )
  end
end
