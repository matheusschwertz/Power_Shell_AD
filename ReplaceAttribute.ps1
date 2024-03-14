Import-Module ActiveDirectory

# Ler nomes dos grupos do arquivo CSV
$grupos = Import-Csv -Path "/home/matheus/projects/powershell/NomeGrupo" | Select-Object -ExpandProperty NomeGrupo

foreach ($grupo in $grupos) {
    $group = Get-ADGroup -Identity $grupo -ErrorAction SilentlyContinue

    if ($group) {
        Set-ADGroup -Identity $group.DistinguishedName -Replace @{extensionAttribute1 = "NoSync"}

        $group = Get-ADGroup -Identity $grupo -Properties extensionAttribute1
        if ($group.extensionAttribute1 -eq "NoSync") {
            Write-Output "O atributo extensionAttribute1 do grupo $grupo foi alterado com sucesso para 'NoSync'."
        } else {
            Write-Output "Falha ao alterar o atributo extensionAttribute1 do grupo $grupo."
        }
    } else {
        Write-Output "Grupo $grupo não encontrado no Active Directory."
    }
}
