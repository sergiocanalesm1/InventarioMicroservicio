class ProductosController < ApplicationController
	def show
		@producto = Producto.find(params[:id])
		
	end
	def new
		
	end
	def create
		@producto = Producto.new(params_method)
		@producto.save
		redirect_to @producto
	end

	def index
		@productos = Producto.all		
	end

	def destroy
		@producto = Producto.find(params[:id])		
		@producto.destroy
		redirect_to productos_path
	end

	private
		def params_method
			params.require(:producto).permit(:nombre, :cantidad)			
		end
end
