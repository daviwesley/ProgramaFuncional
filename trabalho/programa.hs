module Main where

type Aluno = (Int, String, Float, Float)
type Turma = (ALuno)

programa::Turma->IO()
programa turma = do op <- menu
                    if (op == 1 ) then
                        do
                            putStrin "Inclusão de Alunos"
                            turma <- addAluno turma
                            putStrin "Inclusão com Sucesso!"
                            programa turma
                    else if (op == 2) then
                        do
                            tr <- listarTurma turma
                            putStrin "Lista"
                            programa turma
                    else
                        do
                            putStrin "Sair"
                            return()
