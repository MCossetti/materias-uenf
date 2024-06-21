package atividade3;

/**
 *
 * @author mariana
 */
class ConfigurationReaderFactory {
    
    public ConfigurationReader createConfigurationReader(String fileType) {
        switch (fileType.toLowerCase()) {
            case "json":
                return new JsonConfigurationReader();
            case "xml":
                return new XMLConfigurationReader();
            case "yaml":
                return new YAMLConfigurationReader();
            default:
                throw new IllegalArgumentException("Tipo de arquivo de configuração não suportado: " + fileType);
        }
    }
}