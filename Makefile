all: teacher student

teacher:
	typst c --input=showAnswers=yes ./index.typ ./teacher.pdf

student:
	typst c ./index.typ ./student.pdf