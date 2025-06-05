public static class SecretHandshake
{
    public static string[] Commands(int commandValue)
    {
        char[] binary = Convert.ToString(commandValue, 2)
                                          .Reverse()
                                          .Take(5)
                                          .ToArray();

        List<string> commands = [];

        for (int i = 0; i < binary.Count(); i++)
        {
            if (binary[i] is '1')
            {
                switch (i)
                {
                    case 0:
                        commands.Add("wink");
                        break;
                    case 1:
                        commands.Add("double blink");
                        break;
                    case 2:
                        commands.Add("close your eyes");
                        break;
                    case 3:
                        commands.Add("jump");
                        break;
                    case 4:
                        commands.Reverse();
                        break;
                }
            }
            
        }
        return commands.ToArray();
    }
}
