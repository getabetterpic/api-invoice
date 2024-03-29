require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe InvoicesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Invoice. As you add validations to Invoice, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      invoice_date: Date.parse('2014-08-03'),
      customer_id: 1
    }
  }

  let(:invalid_attributes) {
    {
      revision: 1
    }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InvoicesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all invoices as @invoices" do
      invoice = Invoice.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:invoices)).to eq([invoice])
    end
  end

  describe "GET show" do
    it "assigns the requested invoice as @invoice" do
      invoice = Invoice.create! valid_attributes
      get :show, {:id => invoice.to_param}, valid_session
      expect(assigns(:invoice)).to eq(invoice)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Invoice" do
        expect {
          post :create, {:invoice => valid_attributes}, valid_session
        }.to change(Invoice, :count).by(1)
      end

      it "assigns a newly created invoice as @invoice" do
        post :create, {:invoice => valid_attributes}, valid_session
        expect(assigns(:invoice)).to be_a(Invoice)
        expect(assigns(:invoice)).to be_persisted
      end

      it "redirects to the created invoice" do
        post :create, {:invoice => valid_attributes}, valid_session
        expect(response.status).to eq(201)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved invoice as @invoice" do
        post :create, {:invoice => invalid_attributes}, valid_session
        expect(assigns(:invoice)).to be_a_new(Invoice)
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {invoice_date: Date.parse('2014-07-01')}
      }

      it "updates the requested invoice" do
        invoice = Invoice.create! valid_attributes
        put :update, {:id => invoice.to_param, :invoice => new_attributes}, valid_session
        invoice.reload
        expect(invoice.invoice_date).to eq(Date.parse('2014-07-01'))
      end

      it "assigns the requested invoice as @invoice" do
        invoice = Invoice.create! valid_attributes
        put :update, {:id => invoice.to_param, :invoice => valid_attributes}, valid_session
        expect(assigns(:invoice)).to eq(invoice)
      end

      it "redirects to the invoice" do
        invoice = Invoice.create! valid_attributes
        put :update, {:id => invoice.to_param, :invoice => valid_attributes}, valid_session
        expect(response.status).to eq(204)
      end
    end

    describe "with invalid params" do
      it "assigns the invoice as @invoice" do
        invoice = Invoice.create! valid_attributes
        put :update, {:id => invoice.to_param, :invoice => invalid_attributes}, valid_session
        expect(assigns(:invoice)).to eq(invoice)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested invoice" do
      invoice = Invoice.create! valid_attributes
      expect {
        delete :destroy, {:id => invoice.to_param}, valid_session
      }.to change(Invoice, :count).by(-1)
    end

    it "redirects to the invoices list" do
      invoice = Invoice.create! valid_attributes
      delete :destroy, {:id => invoice.to_param}, valid_session
      expect(response.status).to eq(204)
    end
  end

end
