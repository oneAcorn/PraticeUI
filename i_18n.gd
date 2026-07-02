extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_set_text_in_label()

func _notification(what: int) -> void:
	if what==NOTIFICATION_TRANSLATION_CHANGED:
		_set_text_in_label()

func _set_text_in_label():
	# Use tr(translation_key) to get the desired string in the correct language.
	var msg := "This text is being translated through script: \n"
	msg += tr("WITHOUT_SPECIAL_CHARACTER")
	$TextLabel.text=msg


func _on_english_pressed() -> void:
	TranslationServer.set_locale("en")


func _on_chinese_pressed() -> void:
	TranslationServer.set_locale("zh")
