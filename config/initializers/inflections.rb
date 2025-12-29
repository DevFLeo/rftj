# config/initializers/inflections.rb
# g = gestao
ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular "g_instituicao", "g_instituicoes"
end
