package org.hnist.util;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

public class MyUtil {
    public static String upload(HttpServletRequest request, MultipartFile myfile) throws IOException {
        String upic = null;
        if(myfile!=null && ! myfile.isEmpty()){
            //重构文件名 而不是用文件原始名
            String name = UUID.randomUUID().toString().replaceAll("-","");
            String ext = FilenameUtils.getExtension(myfile.getOriginalFilename());
            String url = request.getSession().getServletContext().getRealPath("/upload");//上传路径
            System.out.println(url + "/" + name + "." + ext);
            File file = new File(url);
            if(!file.exists()){
                file.mkdirs();
            }

            myfile.transferTo(new File(url + "/" + name + "." + ext));
            upic = "upload/"+name+"."+ext;
        }
        return upic;
    }

    public static void deleteFile(HttpServletRequest request,String image){
        if (image!=null){
            String url = request.getSession().getServletContext().getRealPath("/upload");
            File folder = new File(url);
            File[] files = folder.listFiles();
            String[] im = image.split("/");
            if(files != null){
                for (File file : files) {
                    if (file.getName().equals(im[1])){
                        file.delete();
                        System.out.println("删除成功");
                    }
                }
            }

        }



    }
}
