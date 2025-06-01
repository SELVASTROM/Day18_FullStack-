class Uploader extends Thread{
    public void run(){
        int count=3;
        while (count>0){
            System.out.println(Thread.currentThread().getName()+"Uploading... "+count);
        count--;
        }
    }
}
class Compressor extends Thread{
    public void run(){
        int count=3;
        while (count>0) {
            
        System.out.println(Thread.currentThread().getName()+"Compressing ... "+count);
        count--;
        }
    }
}
public class Priority {
    public static void main(String[] args) {
        Uploader u=new Uploader();
        Compressor c=new Compressor();
        u.setName("Uploader ");
        c.setName("Compressor ");
        u.setPriority(Thread.MAX_PRIORITY);
        c.setPriority(Thread.MIN_PRIORITY);

         u.start();

        c.start();
    }
    
}
