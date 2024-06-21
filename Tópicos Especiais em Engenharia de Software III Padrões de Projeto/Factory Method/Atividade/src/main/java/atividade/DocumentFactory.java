package atividade;

/**
 *
 * @author mariana
 */
public class DocumentFactory {
    public static Document createDocument(String filePath) {
        String fileExtension = getFileExtension(filePath);

        switch (fileExtension) {
            case "pdf" -> {
                return new PDFDocument(filePath);
            }
            case "docx" -> {
                return new WordDocument(filePath);
            }
            case "html" -> {
                return new HTMLDocument(filePath);
            }
            default -> throw new IllegalArgumentException("Unsupported file type");
        }
    }

    private static String getFileExtension(String filePath) {
        String[] parts = filePath.split("\\.");
        return parts[parts.length - 1];
    }
}