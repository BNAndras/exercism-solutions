import java.util.Arrays;
import java.util.stream.Collectors;

class ResistorColor {
    private enum BandColor {
        black, 
        brown, 
        red, 
        orange, 
        yellow, 
        green, 
        blue, 
        violet, 
        grey, 
        white
}
    int colorCode(String color) {
        return BandColor.valueOf(color).ordinal();
    }

    String[] colors() {
        return Arrays.stream(BandColor.values())
            .map(Enum::name)
            .collect(Collectors.toList())
            .toArray(new String[0]);
    }
}
