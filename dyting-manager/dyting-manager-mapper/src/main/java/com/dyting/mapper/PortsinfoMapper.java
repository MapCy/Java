package com.dyting.mapper;

import com.dyting.pojo.Portsinfo;
import com.dyting.pojo.PortsinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PortsinfoMapper {
    int countByExample(PortsinfoExample example);

    int deleteByExample(PortsinfoExample example);

    int insert(Portsinfo record);

    int insertSelective(Portsinfo record);

    List<Portsinfo> selectByExampleWithBLOBs(PortsinfoExample example);

    List<Portsinfo> selectByExample(PortsinfoExample example);

    int updateByExampleSelective(@Param("record") Portsinfo record, @Param("example") PortsinfoExample example);

    int updateByExampleWithBLOBs(@Param("record") Portsinfo record, @Param("example") PortsinfoExample example);

    int updateByExample(@Param("record") Portsinfo record, @Param("example") PortsinfoExample example);

    //************【1】多表联查***************
    List<Portsinfo> selectByMutiTable(@Param("key") String key,@Param("val") String val);
    
    //************【2】查询结果统计***************
    
    //调用以下函数时需让key与item不相等
    int nonrepeatCount(@Param("key") String key,@Param("val") String val,@Param("item") String item);
    
    int repeatCount(@Param("key") String key,@Param("val") String val,@Param("item") String item,@Param("itemVal") String itemVal);
    
    List<String> selectEveryItem(@Param("key") String key,@Param("val") String val,@Param("item") String item);

    //***************【3】数据可视化***************
    
    //以下函数专为数据可视化服务
    List<String> vmselectColumn(@Param("column") String column);
    int vmcount(@Param("column") String column,@Param("val") String val);
}