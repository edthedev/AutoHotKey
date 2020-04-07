
# Switch to non-PowerShell 6
powershell -NoProfile -ExecutionPolicy Bypass -Command {
    $PSVersionTable
    [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
    [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 
    Start-Sleep -m 500

    $curY = [Windows.Forms.Cursor]::position.y
    $cuyX = [Windows.Forms.Cursor]::position.x

    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($curY - 50,$curX);
    Start-Sleep -m 500
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($curY - 150,$curX);
    Start-Sleep -m 500
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($curY - 1150,$curX);
    Start-Sleep -m 500
    Click-MouseButton left
    # [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($curX,$curY);
    # Click-MouseButton left
    # [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($curX + 10,$curY);
    # Click-MouseButton left
}