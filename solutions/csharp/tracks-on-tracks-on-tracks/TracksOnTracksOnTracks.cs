using System;
using System.Collections.Generic;

public static class Languages
{
    public static List<string> NewList() =>
        [];

    public static List<string> GetExistingLanguages() =>
        ["C#", "Clojure", "Elm"];

    public static List<string> AddLanguage(List<string> languages, string language)
    {
        languages.Add(language);
        return languages;
    }
    
    public static int CountLanguages(List<string> languages)
    {
        int count = 0;
        foreach (string language in languages)
        {
            count += 1;
        }
        return count;
    }

    public static bool HasLanguage(List<string> languages, string language)
    {
        foreach (string value in languages)
        {
            if (value == language)
            {
                return true;
            }
        }
        return false;
    }

    public static List<string> ReverseList(List<string> languages)
    {
        List<string> reversed = NewList();
        for (int i = CountLanguages(languages) - 1; i >= 0; i--)
        {
            reversed = AddLanguage(reversed, languages[i]);
        }
        return reversed;
    }

    public static bool IsExciting(List<string> languages) =>
        languages is ["C#", ..] or [_, "C#"] or [_, "C#", _];

    public static List<string> RemoveLanguage(List<string> languages, string language)
    {
        List<string> newLanguages = NewList();
        foreach (string value in languages)
        {
            if (value != language)
            {
                newLanguages = AddLanguage(newLanguages, value);
            }
        }
        return newLanguages;
    }

    public static bool IsUnique(List<string> languages)
    {
        List<string> seen = NewList();
        foreach (string language in languages)
        {
            if (HasLanguage(seen, language))
            {
                return false;
            }
            
            seen = AddLanguage(seen, language);
        }
        return true;
    }
}
