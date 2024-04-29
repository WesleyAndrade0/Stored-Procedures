CREATE TABLE IF NOT EXISTS Curso (
    ID INT PRIMARY KEY,
    NomeCurso VARCHAR(50),
    Departamento VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Aluno (
    ID INT PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50),
    Email VARCHAR(50),
    Curso_ID INT,
    FOREIGN KEY (Curso_ID) REFERENCES Curso(ID)
);

CREATE TABLE IF NOT EXISTS Professor (
    ID INT PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(50),
    Sobrenome VARCHAR(50),
    Email VARCHAR(50),
    Curso_ID INT,
    FOREIGN KEY (Curso_ID) REFERENCES Curso(ID)
);

DELIMITER //

-- Inserir curso
CREATE PROCEDURE InserirCurso(
    IN nome_curso VARCHAR(50),
    IN departamento VARCHAR(50)
)
BEGIN
    INSERT INTO Curso (NomeCurso, Departamento)
    VALUES (nome_curso, departamento);
END //

-- Selecionar todos os cursos
CREATE PROCEDURE SelecionarCursos()
BEGIN
    SELECT * FROM Curso;
END //

DELIMITER ;
