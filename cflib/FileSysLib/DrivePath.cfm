function DrivePath(drvPath)
{
  Var fso  = CreateObject("COM", "Scripting.FileSystemObject");
  Var drive = fso.GetDrive(drvPath);
  Return drive.Path;
}