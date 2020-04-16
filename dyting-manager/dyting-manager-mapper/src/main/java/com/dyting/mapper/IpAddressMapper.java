package com.dyting.mapper;

import com.dyting.pojo.IpAddress;
import com.dyting.pojo.IpAddressExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IpAddressMapper {
    int countByExample(IpAddressExample example);

    int deleteByExample(IpAddressExample example);

    int insert(IpAddress record);

    int insertSelective(IpAddress record);

    List<IpAddress> selectByExample(IpAddressExample example);

    int updateByExampleSelective(@Param("record") IpAddress record, @Param("example") IpAddressExample example);

    int updateByExample(@Param("record") IpAddress record, @Param("example") IpAddressExample example);
}