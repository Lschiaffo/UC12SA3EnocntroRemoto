CREATE DATABASE cripto
GO

USE cripto
GO

CREATE TABLE Usuarios
(
	usuarioId INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL,
	Nome VARCHAR(100) NOT NULL
)
GO

SELECT * fROM Usuarios
GO

INSERT INTO Usuarios VALUES ('thiago@email.com','senhadothiago','Thiago Nascimento')
GO

SELECT UsuarioId, Email, HASHBYTES('MD2', Senha) AS Senha, Nome FROM Usuarios WHERE UsuarioId = 1
SELECT UsuarioId, Email, HASHBYTES('SHA2_512', Senha) AS Senha, Nome FROM Usuarios WHERE UsuarioId = 1

