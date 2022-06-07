module Validable
  include Currentable

  def owner_user_id?
    begin
      if verify_category_belongs_to_user?
        true
      else
        @product.errors.add(:base, I18n.t("errors.category_doesnt_exist"))
        false
      end
    rescue StandardError => error
      return error
    end
    end

    private

    def verify_category_belongs_to_user?
      current_user.categories.pluck(:id).include? params[:category_id]
    end
end
