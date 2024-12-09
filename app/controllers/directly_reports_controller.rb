class DirectlyReportsController < ApplicationController
  before_action :set_directly_report, only: %i[ show edit update destroy ]

  # GET /directly_reports or /directly_reports.json
  def index
    @directly_reports = DirectlyReport.all
  end

  # GET /directly_reports/1 or /directly_reports/1.json
  def show
  end

  # GET /directly_reports/new
  def new
    @directly_report = DirectlyReport.new
  end

  # GET /directly_reports/1/edit
  def edit
  end

  # POST /directly_reports or /directly_reports.json
  def create
    @directly_report = DirectlyReport.new(directly_report_params)

    respond_to do |format|
      if @directly_report.save
        format.html { redirect_to @directly_report, notice: "Directly report was successfully created." }
        format.json { render :show, status: :created, location: @directly_report }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @directly_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directly_reports/1 or /directly_reports/1.json
  def update
    respond_to do |format|
      if @directly_report.update(directly_report_params)
        format.html { redirect_to @directly_report, notice: "Directly report was successfully updated." }
        format.json { render :show, status: :ok, location: @directly_report }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @directly_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directly_reports/1 or /directly_reports/1.json
  def destroy
    @directly_report.destroy!

    respond_to do |format|
      format.html { redirect_to directly_reports_path, status: :see_other, notice: "Directly report was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directly_report
      @directly_report = DirectlyReport.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def directly_report_params
      params.expect(directly_report: [ :first_name, :last_name, :email, :title ])
    end
end
