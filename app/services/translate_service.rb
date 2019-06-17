class TranslateService
  def initialize(params)
    @word_to_translate = params["word"]
  end

  def call
    translator = Yandex::Translator.new(ENV["YANDEX_API_KEY"])
    translation = translator.translate @word_to_translate, from: "pt", to: "en"
    (@word_to_translate == translation) ? (translator.translate translation, from: "en", to: "pt") : translation
  end
end
