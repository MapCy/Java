package com.dyting.common.utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;

import org.json.CDL;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;
import net.sf.json.xml.XMLSerializer;

/*
 * 文件工具包
 * 支持搜索结果以CSV、JSON、TXT、XML格式导出
 * 【说明】
 * 		由于搜索结果是以json格式返回，因此：
 * 			Json-->CSV、Json-->TXT、Json-->XML
 */
public class fileUtils {

	//判断文件是否存在，不存在就创建
	private static File checkFile(String src){
		File file = new File(src); //存储的目标文件
        if(file.exists()){       //如果存在这个文件就删除，否则就创建
            file.delete();        
        }else{
        	try {
				file.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
		return file;
	}
	
	/*
	 * 格式转换函数参数说明
	 * @Param src: 生成文件的路径
	 * @Param jsonstr: json格式的字符串
	 */
	
	//Json转Txt
	public static void Json2Txt(String src, String jsonstr) throws Exception {
        File file = checkFile(src); //存储的目标文件
        if(file.exists()){       //如果存在这个文件就删除，否则就创建
            file.delete();        
        }else{
        	System.out.println(file.createNewFile());
        }
        FileWriter fw = null;
        BufferedWriter bw = null;
        
        JSONArray array = JSONArray.fromObject(jsonstr);
        fw = new FileWriter(file);
        bw = new BufferedWriter(fw);
        JSONObject first = array.getJSONObject(0);
        Iterator<String> iterator = first.keys();
        while (iterator.hasNext()) {
            // 得到key
            String key = (String) iterator.next();
            bw.write(key); //json字符串写入文件
            bw.write("\t");
        }
        bw.write("\r\n");
        for (int i = 0; i < array.size(); i++) {
            // 得到数组的每项
            JSONObject item = array.getJSONObject(i);
            // 得到key集合
            iterator = item.keys();
            while (iterator.hasNext()) {
                // 得到key
                String key = iterator.next();
                // 得到key对应的value
                String value = item.getString(key);
                bw.write(value);
                bw.write("\t");
            }
            bw.write("\r\n");
        }
        bw.flush();
        System.out.println("转TXT完成");
        if (bw != null) {
            bw.close();
        }
        if (fw != null) {
            fw.close();
        }
    }
	
	//Json转CVS
	public static void Json2Csv(String src, String jsonstr) throws Exception {
		File file = checkFile(src); //存储的目标文件
		FileWriter fw = null;
		BufferedWriter bw = null;
		
		org.json.JSONArray array = new org.json.JSONArray(jsonstr);
        String csv =CDL.toString(array);
        fw = new FileWriter(file);
		bw = new BufferedWriter(fw);
		bw.write(csv);
		bw.flush();
        System.out.println("转CVS完成");
        if (bw != null) {
            bw.close();
        }
        if (fw != null) {
            fw.close();
        }
    }

	//Json转XML
	public static void Json2Xml(String src, String jsonstr) throws Exception{
		File file = checkFile(src); //存储的目标文件
		FileWriter fw = null;
		BufferedWriter bw = null;
		
		net.sf.json.JSON json = JSONSerializer.toJSON(jsonstr);
		XMLSerializer xmlSerializer = new XMLSerializer();
		String xml = xmlSerializer.write(json);
		fw = new FileWriter(file);
		bw = new BufferedWriter(fw);
		bw.write(xml);
		bw.flush();
        System.out.println("转XML完成");
        if (bw != null) {
            bw.close();
        }
        if (fw != null) {
            fw.close();
        }
	}
	
	//以JSON格式导出
	public static void Json(String src, String jsonstr) throws Exception{
		File file = checkFile(src); //存储的目标文件
		FileWriter fw = null;
		BufferedWriter bw = null;
		
		fw = new FileWriter(file);
		bw = new BufferedWriter(fw);
		bw.write(jsonstr);
		bw.flush();
        System.out.println("导出JSON完成");

        if (bw != null) {
            bw.close();
        }
        if (fw != null) {
            fw.close();
        }
	}

}
