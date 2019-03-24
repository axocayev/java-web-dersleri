/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package az.phonebook.fileop;

import az.phonebook.model.PhoneBook;
import az.phonebook.util.PropertyPaddingLength;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collector;
import java.util.stream.Collectors;

/**
 *
 * @author anarx
 */
public class FileOperation {

    private File f = new File("D://phonebook.txt");

    private String padleft(String s, int n) {
        return String.format("%" + n + "s", s);
    }

    private String getAttribute(String line, int start, int end) {
        return line.substring(start, end).trim();
    }

    public boolean addPhonebook(PhoneBook pb) {

        boolean res = false;

        try {

            FileOutputStream fileOutputStream = new FileOutputStream(f, true);
            fileOutputStream.write(padleft(String.valueOf(pb.getId()), PropertyPaddingLength.ID).getBytes());
            fileOutputStream.write(padleft(pb.getName(), PropertyPaddingLength.NAME).getBytes());
            fileOutputStream.write(padleft(pb.getSurname(), PropertyPaddingLength.SURNAME).getBytes());
            fileOutputStream.write(padleft(pb.getEmail(), PropertyPaddingLength.EMAIL).getBytes());
            fileOutputStream.write(padleft(pb.getPhone(), PropertyPaddingLength.PHONE).getBytes());
            fileOutputStream.write(padleft(pb.getAddress() + "\n", PropertyPaddingLength.ADDRESS).getBytes());
            fileOutputStream.close();
            res = true;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return res;
    }

    public static void main(String[] args) {
        FileOperation fo = new FileOperation();
        ///System.out.println(fo.getAllPhoneBook());
        System.out.println(fo.getPhoneBookById(1));
        /*PhoneBook book = new PhoneBook();
        book.setId(3);
        book.setName("Kamal");
        book.setSurname("Aliyev");
        book.setEmail("kamalali@gmail.com");
        book.setPhone("+9945056565652");
        book.setAddress("Baki s. Xetai ray, Azadliq kuc, 76");

        FileOperation fo = new FileOperation();
        fo.addPhonebook(book);*/
    }

    public List<PhoneBook> getAllPhoneBook() {
        List<PhoneBook> list = new ArrayList<>();

        try {
            Scanner in = new Scanner(f);
            while (in.hasNextLine()) {
                String line = in.nextLine();
                PhoneBook pb = new PhoneBook();
                /*System.out.println(line);
                System.out.println(Integer.parseInt(line.substring(0, PropertyPaddingLength.ID).trim()));
                System.out.println(getAttribute(line ,PropertyPaddingLength.ID, PropertyPaddingLength.NAME).trim());
                /*System.out.println(line.substring(PropertyPaddingLength.NAME+1, PropertyPaddingLength.SURNAME).trim());
                System.out.println(line.substring(PropertyPaddingLength.SURNAME+1, PropertyPaddingLength.EMAIL).trim());
                System.out.println(line.substring(PropertyPaddingLength.EMAIL+1, PropertyPaddingLength.PHONE).trim());
                System.out.println(line.substring(PropertyPaddingLength.PHONE+1, PropertyPaddingLength.ADDRESS-1 ).trim());
                 */
                pb.setId(Integer.parseInt(line.substring(0, 4).trim()));
                pb.setName(getAttribute(line, 4, 19));
                pb.setSurname(getAttribute(line, 20, 34));
                pb.setEmail(getAttribute(line, 35, 94));
                pb.setPhone(getAttribute(line, 95, 119));
                pb.setAddress(getAttribute(line, 120, 373));
                list.add(pb);
            }
            in.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(FileOperation.class.getName()).log(Level.ALL.SEVERE, null, ex);
        }
        Collections.sort(list);

        return list;
    }

    public int getNextId() {
        try {
            List<PhoneBook> list = getAllPhoneBook();

            Collections.sort(list, Collections.reverseOrder());
            PhoneBook pb = list.get(0);
            return pb.getId() + 1;
        } catch (IndexOutOfBoundsException e) {
            return 1;
        }
    }

    public boolean updatePhoneBook(PhoneBook pb_inp) {
        System.out.println("Update " + pb_inp);
        List<PhoneBook> list = getAllPhoneBook();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(f);
            fileOutputStream.close();
            System.out.println("File cleared");
        } catch (FileNotFoundException ex) {
            Logger.getLogger(FileOperation.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(FileOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Start new wrtiting ");
        for (PhoneBook pb : list) {
            if (pb.getId() == pb_inp.getId()) {
                addPhonebook(pb_inp);

            } else {
                addPhonebook(pb);
            }
            System.out.println("update num " + pb);
        }
        System.out.println("finished");
        return true;
    }

    public boolean deletePhoneBook(int pb_id) {

     PhoneBook pb_inp=getPhoneBookById(pb_id);
     
        List<PhoneBook> list = getAllPhoneBook();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(f);
            fileOutputStream.close();
            System.out.println("File cleared");
        } catch (FileNotFoundException ex) {
            Logger.getLogger(FileOperation.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(FileOperation.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("Start new wrtiting ");
        for (PhoneBook pb : list) {
            if (pb.getId() == pb_inp.getId()) {
               // addPhonebook(pb_inp);

            } else {
                addPhonebook(pb);
            }
            System.out.println("update num " + pb);
        }
        System.out.println("finished");
        return true;
    }

    public PhoneBook getPhoneBookById(int pbId) {

        /*  return getAllPhoneBook().
                stream().
                filter(phonebook->phonebook.getId()==pbId).collect(Collectors.toList()).
                get(0);*/
        for (PhoneBook pb : getAllPhoneBook()) {
            if (pb.getId() == pbId) {
                return pb;
            }
        }
        return null;

    }

}
