class InvoicesController < ApplicationController
  include ActionController::MimeResponds
  include PdfHelper
  include WickedPdfHelper::Assets
  # GET /invoices
  # GET /invoices.json
  def index
    @invoices = Invoice.all

    render json: @invoices
  end

  # GET /invoices/1
  # GET /invoices/1.json
  def show
    @invoice = Invoice.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @invoice }
    end
  end

  # POST /invoices
  # POST /invoices.json
  def create
    @invoice = Invoice.new(invoice_params)

    if @invoice.save
      render json: @invoice, status: :created, location: @invoice
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /invoices/1
  # PATCH/PUT /invoices/1.json
  def update
    @invoice = Invoice.find(params[:id])

    if @invoice.update(invoice_params)
      head :no_content
    else
      render json: @invoice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /invoices/1
  # DELETE /invoices/1.json
  def destroy
    @invoice = Invoice.find(params[:id])
    @invoice.destroy

    head :no_content
  end

  protected

  def invoice_params
    params.require(:invoice).permit(
      :invoice_date,
      :status,
      :description,
      :revision,
      :terms,
      :customer_id,
      :notes
    )
  end
end
