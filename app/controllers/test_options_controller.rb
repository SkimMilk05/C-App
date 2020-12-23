class TestOptionsController < ApplicationController

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_option
      @test_option = TestOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_option_params
      params.fetch(:test_option, {})
    end
end
