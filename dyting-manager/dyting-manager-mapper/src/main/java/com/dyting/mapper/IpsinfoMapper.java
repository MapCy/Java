package com.dyting.mapper;

import com.dyting.pojo.Ipsinfo;
import com.dyting.pojo.IpsinfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IpsinfoMapper {
    int countByExample(IpsinfoExample example);

    int deleteByExample(IpsinfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Ipsinfo record);

    int insertSelective(Ipsinfo record);

    List<Ipsinfo> selectByExample(IpsinfoExample example);

    Ipsinfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Ipsinfo record, @Param("example") IpsinfoExample example);

    int updateByExample(@Param("record") Ipsinfo record, @Param("example") IpsinfoExample example);

    int updateByPrimaryKeySelective(Ipsinfo record);

    int updateByPrimaryKey(Ipsinfo record);
}