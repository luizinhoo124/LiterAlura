@echo off
chcp 65001 >nul
echo ========================================
echo    UPLOAD PROJETO LITERALURA PARA GITHUB
echo ========================================
echo.

echo [1/6] Verificando se Git está instalado...
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ ERRO: Git não está instalado ou não está no PATH
    echo Por favor, instale o Git: https://git-scm.com/download/win
    pause
    exit /b 1
)
echo ✅ Git encontrado
echo.

echo [2/6] Inicializando repositório Git local...
git init
if errorlevel 1 (
    echo ❌ ERRO: Falha ao inicializar repositório Git
    pause
    exit /b 1
)
echo ✅ Repositório Git inicializado
echo.

echo [3/6] Adicionando todos os arquivos do projeto...
git add .
if errorlevel 1 (
    echo ❌ ERRO: Falha ao adicionar arquivos
    pause
    exit /b 1
)
echo ✅ Arquivos adicionados ao staging
echo.

echo [4/6] Fazendo commit inicial...
git commit -m "Initial commit - LiterAlura Challenge Oracle"
if errorlevel 1 (
    echo ❌ ERRO: Falha ao fazer commit
    pause
    exit /b 1
)
echo ✅ Commit realizado com sucesso
echo.

echo [5/6] Configurando branch main e remote origin...
git branch -M main
if errorlevel 1 (
    echo ❌ ERRO: Falha ao configurar branch main
    pause
    exit /b 1
)

git remote add origin https://github.com/luizinhoo124/LiterAlura.git
if errorlevel 1 (
    echo ⚠️  AVISO: Remote origin já pode estar configurado
)
echo ✅ Configuração da branch e remote concluída
echo.

echo [6/6] Fazendo push para o GitHub...
echo ⚠️  IMPORTANTE: Você pode precisar inserir suas credenciais do GitHub
echo.
git push -u origin main
if errorlevel 1 (
    echo ❌ ERRO: Falha ao fazer push para o GitHub
    echo.
    echo Possíveis soluções:
    echo 1. Verifique suas credenciais do GitHub
    echo 2. Certifique-se de que o repositório existe: https://github.com/luizinhoo124/LiterAlura
    echo 3. Verifique sua conexão com a internet
    echo 4. Se necessário, configure o Git com:
    echo    git config --global user.name "Seu Nome"
    echo    git config --global user.email "seu.email@exemplo.com"
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✅ SUCESSO! Projeto enviado para o GitHub
echo ========================================
echo.
echo 🔗 Seu repositório: https://github.com/luizinhoo124/LiterAlura
echo.
echo Próximos passos:
echo 1. Acesse o link acima para ver seu projeto no GitHub
echo 2. Verifique se todos os arquivos foram enviados corretamente
echo 3. Adicione colaboradores se necessário
echo.
pause