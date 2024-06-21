package atividade3;

/**
 * Implemente um sistema de notícias que notifique aos interessados sempre que uma nova notícia for publicada.
 * @author mariana
 */
public class Atividade3 {

    public static void main(String[] args) {
        User user1 = new User(1, "Mariana");
        User user2 = new User(2, "Joana");
        User user3 = new User(3, "Juliana");
        
        News news = new News();
        
        news.addUser(user1);
        news.addUser(user2);
        news.addUser(user3);
        
        news.newNews("Vasco da gama ganha 2 jogos no mesmo dia!");
        
        news.removeUser(user2);
        
        news.newNews("Botafogo segue com 100% de aproveitamento no Carioca.");
        
        news.removeUser(user3);
        
        news.newNews("Hoje não terá aula!");
    }
}
