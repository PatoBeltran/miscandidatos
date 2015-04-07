class PagesController < ApplicationController
  before_filter :authenticate_user!, except: [:legal, :finance, :rules]

  def legal
    @page = StaticPage.where(name: "legal").first
  end

  def finance
    @page = StaticPage.where(name: "finance").first
  end

  def rules
    @page = StaticPage.where(name: "rules").first
  end

  def edit_legal
    @page = StaticPage.where(name: "legal").first
  end

  def update_legal
    @page = StaticPage.where(name: "legal").first
    if @page.update_attributes(page_params)
      @page.modified_by << { user_id: current_user.id, date: Time.now }
      @page.save!
      redirect_to legal_path
    else
      render :edit_legal
    end
  end

  def edit_finance
    @page = StaticPage.where(name: "finance").first
  end

  def update_finance
    @page = StaticPage.where(name: "finance").first
    if @page.update_attributes(page_params)
      @page.modified_by << { user_id: current_user.id, date: Time.now }
      @page.save!
      redirect_to finance_path
    else
      render :edit_finance
    end
  end

  def edit_rules
    @page = StaticPage.where(name: "rules").first
  end

  def update_rules
    @page = StaticPage.where(name: "rules").first
    if @page.update_attributes(page_params)
      @page.modified_by << { user_id: current_user.id, date: Time.now }
      @page.save!
      redirect_to rules_path
    else
      render :edit_rules
    end
  end

  private

  def page_params
    params.require(:page).permit(:content, :title)
  end
end
