class CustomersController < ApplicationController
  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all

    render json: @customers
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.includes(:invoices).find(params[:id])

    render json: @customer, meta: {invoice_count: @customer.invoices.count}
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      render json: @customer, status: :created, location: @customer
    else
      ap errors(@customer.errors)
      render json: errors(@customer.errors), status: :unprocessable_entity
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    @customer = Customer.find(params[:id])

    if @customer.update(customer_params)
      head :no_content
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    head :no_content
  end

  protected

  def customer_params
    params.require(:customer).permit(
      :name,
      :address,
      :city,
      :region,
      :postal_code,
      :country,
      :reference,
      :status,
      :email,
      :phone,
      :company
    )
  end
end
