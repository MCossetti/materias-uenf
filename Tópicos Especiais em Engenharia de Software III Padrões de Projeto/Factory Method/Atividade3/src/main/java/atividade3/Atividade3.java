package atividade3;

import java.io.File;

/**
 *
 * @author mariana
 */
public class Atividade3 {

    public static void main(String[] args) {
        ConfigurationReaderFactory readerFactory = new ConfigurationReaderFactory();

        File jsonFile = new File("config.json");
        ConfigurationReader jsonReader = readerFactory.createConfigurationReader("json");
        jsonReader.readConfiguration(jsonFile);

        File xmlFile = new File("config.xml");
        ConfigurationReader xmlReader = readerFactory.createConfigurationReader("xml");
        xmlReader.readConfiguration(xmlFile);

        File yamlFile = new File("config.yaml");
        ConfigurationReader yamlReader = readerFactory.createConfigurationReader("yaml");
        yamlReader.readConfiguration(yamlFile);
    }
}
