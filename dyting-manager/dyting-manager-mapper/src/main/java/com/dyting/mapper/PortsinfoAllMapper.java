package com.dyting.mapper;

import com.dyting.pojo.PortsinfoAll;
import com.dyting.pojo.PortsinfoAllExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PortsinfoAllMapper {
    int countByExample(PortsinfoAllExample example);

    int deleteByExample(PortsinfoAllExample example);

    int insert(PortsinfoAll record);

    int insertSelective(PortsinfoAll record);

    List<PortsinfoAll> selectByExampleWithBLOBs(PortsinfoAllExample example);

    List<PortsinfoAll> selectByExample(PortsinfoAllExample example);

    int updateByExampleSelective(@Param("record") PortsinfoAll record, @Param("example") PortsinfoAllExample example);

    int updateByExampleWithBLOBs(@Param("record") PortsinfoAll record, @Param("example") PortsinfoAllExample example);

    int updateByExample(@Param("record") PortsinfoAll record, @Param("example") PortsinfoAllExample example);
}