class TranslateService
  def initialize(word_to_translate)
    @word_to_translate = word_to_translate
  end

  def call
    translator = Yandex::Translator.new(ENV["YANDEX_API_KEY"])
    translator.translate @word_to_translate, from: "en"
  end
end
