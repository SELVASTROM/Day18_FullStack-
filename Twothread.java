class Downloading extends Thread{
    public void run(){
        int count=5;
        while (count>0) {
            try {
                System.out.println("Downloading...");
                Thread.sleep(1000);
                
            } catch (Exception e) {}
            count--;
        }
    }
}
class Saving extends Thread{
    public void run(){
        for(int i=0;i<5;i++){
            try {
                System.out.println("Saving...");
                Thread.sleep(1000);
            } catch (Exception e) {} 
        }
    }
}
public class Twothread {
    public static void main(String[] args) {
        Downloading d=new Downloading();
        d.start();
        Saving s=new Saving();
        s.start();
    }
    
}
