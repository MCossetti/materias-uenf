package atividade3;

/**
 *
 * @author mariana
 */
public class Atividade3 {

    public static void main(String[] args) {
        HouseFactory colonial = new ColonialStyleFactory();
        HouseFactory contemporary = new ContemporaryStyleFactory();
        
        House foundation1 = colonial.produceFoundation();
        House wall1 = colonial.produceWalls();
        House roof1 = colonial.produceRoof();

        House foundation2 = contemporary.produceFoundation();
        House wall2 = contemporary.produceWalls();
        House roof2 = contemporary.produceRoof();

        foundation1.build();
        wall1.build();
        roof1.build();

        foundation2.build();
        wall2.build();
        roof2.build();
    }
    
}
