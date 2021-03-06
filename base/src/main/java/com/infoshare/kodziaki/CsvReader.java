package com.infoshare.kodziaki;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.enterprise.context.RequestScoped;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

@RequestScoped
public class CsvReader {
    private Logger logger = LoggerFactory.getLogger(CsvReader.class);


    private static final String SEPARATOR = ";";

    public List<Place> readFile(Reader source) throws IOException, NumberFormatException {
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(source);
            logger.info("PARSE CSV");
            List<Place> places = reader.lines()
                    .skip(1)
                    .map(l -> l.split(SEPARATOR))
                    .map(array -> new PlaceBuilder()
                            .withId(Integer.parseInt(array[0]))
                            .withTitle(array[1])
                            .withPlaceType(PlaceType.valueOf(array[2]))
                            .withPrice(BigDecimal.valueOf(Double.parseDouble(array[3])))
                            .withArea(Double.parseDouble(array[4]))
                            .withRooms(Integer.parseInt(array[5]))
                            .withFloor(Integer.parseInt(array[6]))
                            .withDistrict(array[7])
                            .withCity(array[8])
                            .withHasElevator(Boolean.parseBoolean(array[9]))
                            .withSmokingAllowed(Boolean.parseBoolean(array[10]))
                            .withAnimalAllowed(Boolean.parseBoolean(array[11]))
                            .withOnlyLongTerm(Boolean.parseBoolean(array[12]))
                            .withDescription(array[13])
                            .withAuthor(array[14])
                            .withPhoneNumber(array[15])
                            .buildPlace())
                    .collect(Collectors.toList());
            logger.info("AFTER PARSE CSV");
            places.forEach(place -> {
                logger.info("CITY = " + place.getCity());
            });
            return places;
        } catch (Exception e) {
            throw new NumberFormatException();
        } finally {
            if (source != null) {
                reader.close();
            }
        }
    }
}

