library(msmbstyle)

begin_question <- function(x) {
  msmbstyle::question_begin(header = "&#x25BA; Question", label = "ques:x")
}

end_question <- msmbstyle::question_end()

begin_solution <- msmbstyle::solution_begin(toggle = FALSE)
# begin_solution <- msmbstyle::solution_begin(toggle = TRUE)

end_solution <- msmbstyle::solution_end()
