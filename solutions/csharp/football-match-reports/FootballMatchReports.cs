using System;

public static class PlayAnalyzer
{
    public static string AnalyzeOnField(int shirtNum) =>
        shirtNum switch
        {
            1 => "goalie",
            2 => "left back",
            3 or 4 => "center back",
            5 => "right back",
            6 or 7 or 8 => "midfielder",
            9 => "left wing",
            10 => "striker",
            11 => "right wing",
            _ => "UNKNOWN"
        };

    public static string AnalyzeOffField(object report) =>
        report switch
        {
            int supporters =>
                $"There are {supporters} supporters at the match.",
            string message =>
                message,
            Foul foul when foul.GetDescription() is var description =>
                description,
            Injury injury when injury.GetDescription() is var description =>
                $"Oh no! {description} Medics are on the field.",
            Incident incident when incident.GetDescription() is var description =>
                description,
            Manager { Name: var name, Club: null } =>
                name,
            Manager { Name: var name, Club: var club } =>
                $"{name} ({club})",
            _ => ""
        };
}
