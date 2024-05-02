Add-Type -AssemblyName System.Windows.Forms

function Get-Duration {
    $form = New-Object System.Windows.Forms.Form
    $form.Text = "Entrer la durée"
    $form.Size = New-Object System.Drawing.Size(200,220)
    $form.StartPosition = "CenterScreen"

    $label = New-Object System.Windows.Forms.Label
    $label.Text = "Entrez la durée :"
    $label.Location = New-Object System.Drawing.Point(10,20)
    $label.Size = New-Object System.Drawing.Size(230,20)
    $label.Font = New-Object System.Drawing.Font("Arial", 10, [System.Drawing.FontStyle]::Regular)  # Changement de la police ici
    $form.Controls.Add($label)

    $textBox = New-Object System.Windows.Forms.TextBox
    $textBox.Multiline = $true
    $textBox.Font = New-Object System.Drawing.Font("Arial", 12, [System.Drawing.FontStyle]::Regular)  # Changement de la police ici
    $textBox.Location = New-Object System.Drawing.Point(10,50)
    $textBox.Size = New-Object System.Drawing.Size(150,30)
    $form.Controls.Add($textBox)

    $okButton = New-Object System.Windows.Forms.Button
    $okButton.Location = New-Object System.Drawing.Point(10,110)
    $okButton.Size = New-Object System.Drawing.Size(100,35)
    $okButton.Text = "OK"
    $okButton.Font = New-Object System.Drawing.Font("Arial", 10, [System.Drawing.FontStyle]::Bold)  # Changement de la police ici
    $okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $form.AcceptButton = $okButton
    $form.Controls.Add($okButton)

    $form.Topmost = $true

    $form.Add_Shown({$textBox.Select()})
    $result = $form.ShowDialog()

    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        $textBox.Text
    } else {
        Exit
    }
}

do {
    $duration = Get-Duration
    $endTime = (Get-Date).AddMinutes($duration)

    while ((Get-Date) -lt $endTime) {
        # position de base curseur
        $pos = [System.Windows.Forms.Cursor]::Position

        # nouvelle position curseur
        $newX = $pos.X + 10
        $newY = $pos.Y + 10
        [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($newX, $newY)

        Start-Sleep -Seconds 5

        # Revenir position de base curseur
        $newX = $pos.X
        $newY = $pos.Y
        [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($newX, $newY)

        Start-Sleep -Seconds 5
    }

    $continue = [System.Windows.Forms.MessageBox]::Show("Voulez-vous continuer ?", "Confirmation", [System.Windows.Forms.MessageBoxButtons]::YesNo)
} while ($continue -eq [System.Windows.Forms.DialogResult]::Yes)


#####################################
#  .-. .-')       (`-.   _  .-')    #
#  \  ( OO )    _(OO  )_( \( -O )   #
#  ,--. ,--.,--(_/   ,. \,------.   #
#  |  .'   /\   \   /(__/|   /`. '  #
#  |      /, \   \ /   / |  /  | |  #
#  |     ' _) \   '   /, |  |_.' |  #
#  |  .   \    \     /__)|  .  '.'  #
#  |  |\   \    \   /    |  |\  \   #
#  `--' '--'     `-'     `--' '--'  #
#####################################