module Main where

type Aluno = (Int, String, Float, Float)
type Turma = (ALuno)

lerInteiro::IO(Int)
lerInteiro = do n <- getline
                return(read n)
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
menu::IO(Int)
addAluno(x:xs) = do
                    putStrin "Digite a matricula"
                    ma <- lerInteiro
                    putStrin "Digite o nome do aluno"
                    nome <- getLine
                    putStrin "Digite a 1° Nota"
                    n1 <- lerFloat
                    putStrin "Digite a 2° Nota"
                    n1 <- lerFloat
                    return([(x:xs):(ma,nome,n1,n2)])
lerFloat::IO(Float)
