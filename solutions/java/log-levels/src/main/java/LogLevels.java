public class LogLevels {
    
    public static String message(String logLine) {
        var startPos = logLine.indexOf(": ") + 1;
        return logLine.substring(startPos).trim();
    }

    public static String logLevel(String logLine) {
        var endPos = logLine.indexOf("]:");
        return logLine.substring(1, endPos).toLowerCase();
    }

    public static String reformat(String logLine) {
        return message(logLine) + " (" + logLevel(logLine) + ")";
    }
}
