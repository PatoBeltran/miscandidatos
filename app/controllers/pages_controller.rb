class PagesController < ApplicationController
  def legal
    @page = StaticPage.where(name: "legal")
  end

  def finance
    @page = StaticPage.where(name: "finance")
  end

  def rules
    @page = StaticPage.where(name: "rules")
  end

  def edit_legal
  end

  def edit_finance
  end

  def edit_rules
  end
end
