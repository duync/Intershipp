/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.http.Part;

/**
 *
 * @author DELL
 */
public class UploadModel {

    public UploadModel() {

    }

    public boolean uploadFile(String filename, Part file, String uploadRootPath) {
        try {
            InputStream fis = file.getInputStream();
            byte[] data = new byte[fis.available()];
            fis.read(data);

            FileOutputStream out
                    = new FileOutputStream(new File(uploadRootPath + "\\" + filename));
            out.write(data);
            out.close();
        } catch (IOException e) {
            System.out.println(e.getMessage());
            return false;
        }
        return true;
    }

}
