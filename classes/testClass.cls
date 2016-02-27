public class testClass {
    static List<Attachment> attaches = [SELECT BodyLength FROM Attachment where parentid in (Select Id from Account)];
    static Integer i=1;
    public static void main(){
        for(Attachment att:attaches){
            i +=att.BodyLength/1024*1024;
        }
       System.debug(i);
    }

}