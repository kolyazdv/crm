class NewsPolicy < ApplicationPolicy
  def index?
    true
  end
 
  def create?
    user.present?
  end
 
  def update?
    return true if user.present? && user == article.user
  end
 
  def destroy?
    return true if user.present? && user == article.user
  end
 
  private
 
    def news
      record
    end
end