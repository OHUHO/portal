package com.record.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author 京茶吉鹿
 * @since 2023-03-07
 */
@Getter
@Setter
@Accessors(chain = true)
@TableName("t_type_details")
@ApiModel(value = "TypeDetails对象", description = "")
public class TypeDetails implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("种类详情id")
    @TableId(value = "type_detais_id", type = IdType.AUTO)
    private Integer typeDetaisId;

    @ApiModelProperty("标题")
    private String title;

    @ApiModelProperty("图片")
    private String imageUrl1;

    private String imageUrl2;

    private String imageUrl3;

    private String imageUrl4;

    private String imageUrl5;

    @ApiModelProperty("描述内容")
    private String introduction;

    @ApiModelProperty("类型id")
    private Integer typeId;

    @ApiModelProperty("创建时间")
    private String createTime;

    @ApiModelProperty("逻辑删除")
    @TableLogic
    private Integer isDelete;
}
