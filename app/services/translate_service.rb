class TranslateService
  def initialize(params)
    @word_to_translate = params["word"]
  end

  def call
    translator = Yandex::Translator.new(ENV["YANDEX_API_KEY"])
    translation = translator.translate @word_to_translate, from: "en"
    translator.translate translation, from: "pt" if @word_to_translate == translation
  end
end
