class Down extends Thread{
    String name;
    Down(String name){
        this.name=name;
    }
    public void run(){
        for(int i=5;i>0;i--){
            System.out.println(name+" : "+i);
            try{
                Thread.sleep(2000);
            }catch(InterruptedException e){}
        }

    }
}
public class Countdown {
    public static void main(String[] args) {
        Down d1=new Down("Thread-A");
        Down d2=new Down("Thread-B");
        d1.start();
        d2.start();

        try {
            d1.join();
            d2.join();
        } catch (InterruptedException e) {}

        System.out.println("The Both threads are Done");
    }
    
}
