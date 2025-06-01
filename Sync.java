class shared extends Thread{
    synchronized void print() {
        for(int i=0;i<50;i++){
            System.out.println("Count :"+i);
        }
        // method body
    }
}
class Sync {
    public static void main(String[] args) {
        Thread s=new Thread();
        s.run();
    }
    
}
