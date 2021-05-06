extends Node

var rng = RandomNumberGenerator.new()

func _ready():
	get_tree().paused = false
	$GridContainer.hide()
	$Question.hide()
	
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")
	$HTTPRequest.request("http://localhost:3333/quizzes")

func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	var quizData = json.result
	
	$Question.text = quizData[0].question
	
	var answers = quizData[0].alternatives
	
	randomize()
	answers.shuffle()
	
	for i in range (answers.size()):
		$GridContainer.get_child(i).get_child(0).get_child(0).text = answers[i].answer
	
func _on_AnimationPlayer_animation_finished(TitleIn):
	$GridContainer.show()
	$Question.show()


