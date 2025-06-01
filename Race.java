// class Counter extends Thread{
//     public void run() {
//         int count = 0;
//         int sum = 0;

//         while (count < 1001) {
//             System.out.println("Counting ... " + count);
//             count++;
//             sum++;
//         }
//         System.out.println("the total is " + sum);
//     }
// }
// class Mycounter extends Thread{
//     public void run(){
//         int sum=0;
//         for(int i=1;i<=1000;i++){
//             System.out.println("Mycounting... "+i);
//             sum++;
//         }
//         System.out.println("the total of Mycounting is "+sum);
//     }
// }
//public class Race {
//     public static void main(String[] args) {
//         Counter c=new Counter();
//         c.start();
//         Mycounter m=new Mycounter();
//         m.start();
//     }
    
// }
class Counter {
    int count = 0;

    // Without synchronized, race condition may happen
    public synchronized void increment() {
        count++;
    }

    public int getCount() {
        return count;
    }
}

public class Race {
    public static void main(String[] args) throws InterruptedException {
        Counter counter = new Counter();

        Thread t1 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });

        Thread t2 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });

        t1.start();
        t2.start();

        // Wait for both threads to finish
        t1.join();
        t2.join();

        System.out.println("Final count: " + counter.getCount());
    }
}
