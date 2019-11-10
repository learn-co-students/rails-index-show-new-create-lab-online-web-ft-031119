class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def new

    end

    def show
        @coupon = Coupon.find(params[:id])
    end


    def create
        #create a new coupon
        @coupon = Coupon.new
         #pass the params
        @coupon[:coupon_code] = params[:coupon][:coupon_code]
        @coupon[:store] = params[:coupon][:store]
        #attempt to save the coupon
        @coupon.save        
        #redirect to the right path
        redirect_to coupon_path(@coupon)

    end

end