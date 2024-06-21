package atividade;

/**
 *
 * @author mariana
 */
public class Atividade {

    public static void main(String[] args) {
        String filePath1 = "document1.pdf";
        String filePath2 = "document2.docx";
        String filePath3 = "document3.html";

        Document pdfDocument = DocumentFactory.createDocument(filePath1);
        Document wordDocument = DocumentFactory.createDocument(filePath2);
        Document htmlDocument = DocumentFactory.createDocument(filePath3);

        pdfDocument.load();
        wordDocument.load();
        htmlDocument.load();
    }
}