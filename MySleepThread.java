// class Mythread extends Thread{
//     public void run(){
//         for(int i=0;i<=5;i++){
//             System.out.println(i);
//         try{
//             Thread.sleep(2000);
//         }catch(InterruptedException e){
//             e.printStackTrace();
//         }
//     } 
// }
// }
// public class Mysleep {
//     public static void main(String[] args) {
//         Mythread m=new Mythread();
//         m.start();
//     }
    
// }
class Mythread extends Thread {
    public void run() {
        for (int i = 0; i <= 5; i++) {
            System.out.println(i);
            try {
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}

public class MySleepThread {
    public static void main(String[] args) {
        Mythread m = new Mythread();
        m.start();
    }
}
