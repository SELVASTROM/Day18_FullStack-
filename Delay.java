class Mythread extends Thread{
    public void run(){
        for(int i=1;i<=5;i++){
            System.out.println("The index of  number "+i);
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {}
        }
        
    }
}
public class Delay {
    public static void main(String[] args) {
        Mythread m=new Mythread();
        m.start();
    }
    
}
