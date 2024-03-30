$atividades = @(
    "dart-colecoes",
    "dart-concorrencia",
    "dart-elementos-logicos",
    "dart-erros",
    "dart-funcoes",
    "dart-operadores",
    "dart-variaveis",
    "oop-parte-1",
    "oop-parte-2",
    "dart-desafio-1",
    # "dart-desafio-2",
    # "dart-desafio-3",

    # Flutter (não está pronto)
    # "flutter-async",  # TODO: verificar se está faltando algo aqui
     "flutter-formularios",
     "flutter-introducao",
     "flutter-navegacao",
     "flutter-provider",
     "flutter-widgets"
)

# Criar pasta de builds
$caminhoBuilds = "./build"
if (!(Test-Path $caminhoBuilds -PathType Container))
{
    New-Item -ItemType Directory -Force -Path $caminhoBuilds
}
else
{
    # Limpar arquivos da pasta de build
    Set-Location "./build"
    Get-ChildItem "." | Remove-Item
    Set-Location ..
}

# Build atividades Dart
foreach ($item in $atividades)
{
    Set-Location $item
    scormpkgr.exe
    Set-Location "./build"

    $conteudoBuild = Get-ChildItem "."

    foreach ($buildContent in $conteudoBuild)
    {
        $parentPath = $buildContent.Directory.Parent.Parent.FullName
        Move-Item $buildContent -Destination "$parentPath\build"
    }

    Set-Location ../../
}
