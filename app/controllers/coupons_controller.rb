class CouponsController < ApplicationController
  def index
<<<<<<< HEAD
    @coupons = Coupon.all
    # render "index"
=======
    @coupon = Coupon.all
    render "index"
>>>>>>> 2e203962df3274a4df7d34104e0606d3d78e6883
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
end
