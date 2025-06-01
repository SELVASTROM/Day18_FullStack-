class Eventhread extends Thread{
    public void run(){
        for(int i=0;i<=10;i+=2)System.out.println("The even numbers in the thread : "+i);
    }
}
class OddThread extends Thread{
    public void run(){
        for(int i=1;i<=10;i+=2)System.out.println("The Odd Numbers in the thread is : "+i);
    }
}
class Odd {
    public static void main(String[] args) {
        Eventhread e=new Eventhread();
        e.start();
        OddThread o=new OddThread();
        o.start(); 
    }
    
}
