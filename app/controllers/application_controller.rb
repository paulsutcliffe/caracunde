class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_i18n_locale_from_params
  before_filter :load_slides_e_patrocinadores

  def load_slides_e_patrocinadores
    @slides = Slide.all
    @patrocinadores = Patrocinador.all
  end

  protected

    def set_i18n_locale_from_params
      if (params[:locale] ||= :pt)
      if I18n.available_locales.include?(params[:locale].to_sym)
        I18n.locale = params[:locale]
      else
        flash.now[:notice] = "#{params[:locale]} tradução não disponível"
        logger.error flash.now[:notice]
      end
      end
    end

    def default_url_options
      { :locale => I18n.locale }
    end
end
