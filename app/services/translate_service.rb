class TranslateService
  def initialize(params)
    @word_to_translate = params["word"]
  end

  def call
    translator = Yandex::Translator.new(ENV["YANDEX_API_KEY"])
    translation = translator.translate @word_to_translate, from: "en"
    (@word_to_translate == translation) ? (translator.translate translation, from: "pt") : translation
  end
end
