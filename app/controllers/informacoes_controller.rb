class InformacoesController < InheritedResources::Base
  before_filter :authenticate_usuario!
end
