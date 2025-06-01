class MyThread extends Thread {
    public void run() {
        int count=5;
        while (count>0) {
            
        System.out.println("Thread running: " + Thread.currentThread().getName());
        count--;
        }
    }
}

class MyRunnable implements Runnable {
    public void run() {
        int count=5;
        while (count>0) {
            
        System.out.println("Runnable running: " + Thread.currentThread().getName());
        count--;
        }
    }
}

 class Main {
    public static void main(String[] args) {
        MyThread t1 = new MyThread();
        t1.start(); // calls run()

        Thread t2 = new Thread(new MyRunnable());
        t2.start();
    }
}
