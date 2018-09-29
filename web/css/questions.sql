delete from questions;

insert into questions
values(1,'java','Which of the following are Java keywords?',
'shared','synchronized','instanceOf','1');

insert into questions
values(2,'java','Which of the following is INVALID statement?',
'System.out.println(1+1);',
'float f = 10.60;',
'String s="One" + " 2";',
'2');

insert into questions
values(3,'java',
'Which of the following statements are true?',
'The garbage collection algorithm in Java is vendor implemented',
'The size of primitives is platform dependent',
'The default type for a numerical literal with decimal component is a float.',
'1');
 
insert into questions
values(4,'java',
'Which of the following are true?',
'A component may have only one event listener attached at a time',
'An event listener may be removed from a component',
'The processing of an event listener requires a try/catch block',
'2');

insert into questions
values(5,'java',
'Assuming any exception handling has been set up, which of the following will create an
instance of the RandomAccessFile class',
'RandomAccessFile raf=new RandomAccessFile("myfile.txt","rw");',
'RandomAccessFile raf=new RandomAccessFile( new DataInputStream());',
'RandomAccessFile raf=new RandomAccessFile("myfile.txt");',
'1');

insert into questions
values(6,'java',
'Which of the following lines will compile without warning or error.',
'float f=1.3;',
'byte b = -128;', 
'boolean b=null;',
'2');
    
insert into questions
values(7,'java',  
'Which of the following are correct Container and default layout managers',
'Applet - FlowLayout, Frame-FlowLayout',
'Applet - BorderLayout, Frame-BorderLayout',
'Applet- FlowLayout,Frame-BorderLayout',
'3');


insert into questions
values(8,'java',  
'What is the correct ordering for import, class and package declarations in a single 
java source file',
'package, import, class',
'Any order',
'import, package, class',
'1');



insert into questions values(9,'java',
'Which of the following methods is not a method of Thread class?',
'yield()','sleep(long msec)','go()','3');

insert into questions values(10,'java',
'Which of the following methods is not a method of Vector class to insert new element',
'addElement','insert','append','3');


insert into questions values(11,'java',
'Which of the following will compile without error?',
'File f = new File("/","autoexec.bat");',
'OutputStreamWriter o = new OutputStreamWriter(System.out);',
'RandomAccessFile r = new RandomAccessFile("OutFile");',
'3');


insert into questions values(12,'java',
'Which of the following statements about threading is NOT true',
'You can only obtain a mutually exclusive lock on methods in a class that extends Thread or implements runnable',
'You can obtain a mutually exclusive lock on any object',
'A thread can obtain a mutually exclusive lock on an object by calling a synchronized method on that object.',
'1');

insert into questions values(13,'java',
'Which of the following is NOT correct event handling method',
'mousePressed(MouseEvent e){}',
'functionKey(KeyPress k){}',
'componentAdded(ContainerEvent e){}',
'2');

insert into questions values(14,'java',
'Which of the following methods is NOT a method of the Collection interface?',
'iterator',
'toArray',
'setText',
'3');


insert into questions values(15,'java',
'What will be output by the following line of code?
System.out.println(010|4);',
'14',
'6',
'12',
'3');

insert into questions values(16,'java',
'Which of the following statements is true?',
'At the root of the collection hierarchy is a class called Collection',
'The collection interface contains a method called enumerator',
'The Set interface is designed for unique elements',
'3');

insert into questions values(17,'java',
'Which of the following is the correct syntax for suggesting that the JVM performs garbage collection',
'System.free();',
'System.memory.gc();',
'System.gc();',
'3');

insert into questions values(18,'java',
'Which most closely matches a description of a Java Map?',
'A class for containing unique array elements',
'A class for containing unique vector elements',
'An interface that ensures that implementing classes cannot contain duplicate keys',
'3');

commit;
