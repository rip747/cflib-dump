function FolderType(path)
{
  Var fso  = CreateObject("COM", "Scripting.FileSystemObject");
  Var folder = fso.Getfolder(path);
  Return folder.Type;
}