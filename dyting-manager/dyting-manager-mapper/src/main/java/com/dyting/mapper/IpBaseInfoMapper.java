package com.dyting.mapper;

import com.dyting.common.pojo.TupleCountry;
import com.dyting.common.pojo.threed.CityInfo;
import com.dyting.common.pojo.threed.CountryInfo;
import com.dyting.common.pojo.threed.ThreedGeojson;
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
    
    //根据经纬度获取国家名
    String selectByLatAndLog(@Param("latitude") String latitude,@Param("longitude") String longitude);
    
    //动态SQL查询
    List<CityInfo> selectByCountry(@Param("country") String country);
    
    //按国家分类统计
    List<CountryInfo> selectCountry();
    
    //统计各个国家的经纬度范围
    TupleCountry selectPerCountryArea(@Param("country") String country);
}