package com.dyting.mapper;

import com.dyting.pojo.CnvdIcs;
import com.dyting.pojo.CnvdIcsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CnvdIcsMapper {
    int countByExample(CnvdIcsExample example);

    int deleteByExample(CnvdIcsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CnvdIcs record);

    int insertSelective(CnvdIcs record);

    List<CnvdIcs> selectByExampleWithBLOBs(CnvdIcsExample example);

    List<CnvdIcs> selectByExample(CnvdIcsExample example);

    CnvdIcs selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CnvdIcs record, @Param("example") CnvdIcsExample example);

    int updateByExampleWithBLOBs(@Param("record") CnvdIcs record, @Param("example") CnvdIcsExample example);

    int updateByExample(@Param("record") CnvdIcs record, @Param("example") CnvdIcsExample example);

    int updateByPrimaryKeySelective(CnvdIcs record);

    int updateByPrimaryKeyWithBLOBs(CnvdIcs record);
}