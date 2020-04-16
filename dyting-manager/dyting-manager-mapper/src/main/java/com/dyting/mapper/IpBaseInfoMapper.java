package com.dyting.mapper;

import com.dyting.common.pojo.threed.CityInfo;
import com.dyting.common.pojo.threed.ThreedResult;
import com.dyting.pojo.IpBaseInfo;
import com.dyting.pojo.IpBaseInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface IpBaseInfoMapper {
    int countByExample(IpBaseInfoExample example);

    int deleteByExample(IpBaseInfoExample example);

    int insert(IpBaseInfo record);

    int insertSelective(IpBaseInfo record);

    List<IpBaseInfo> selectByExample(IpBaseInfoExample example);

    int updateByExampleSelective(@Param("record") IpBaseInfo record, @Param("example") IpBaseInfoExample example);

    int updateByExample(@Param("record") IpBaseInfo record, @Param("example") IpBaseInfoExample example);
    
    //动态SQL查询
    List<CityInfo> selectByCountry(@Param("country") String country);
    
    //不重复查询国家
    List<IpBaseInfo> selectDistinctCountry();
}