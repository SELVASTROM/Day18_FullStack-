class Mythread extends Thread{
    public void run(){
        System.out.println("Thread Running "+Thread.currentThread().getName());
    }

}
public class Intro {
    public static void main(String[] args) {
        Mythread m=new Mythread();
        m.start();
    }
    
}
