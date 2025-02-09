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
@TableName("t_example")
@ApiModel(value = "Example对象", description = "")
public class Example implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty("案例id")
    @TableId(value = "example_id", type = IdType.AUTO)
    private Long exampleId;

    @ApiModelProperty("案例名称")
    private String name;

    @ApiModelProperty("案例种类（0，1，2，3，4，5）")
    private Integer exampleType;

    @ApiModelProperty("案例封面(1-16张)")
    private String image1;
    private String image2;
    private String image3;
    private String image4;
    private String image5;
    private String image6;
    private String image7;
    private String image8;
    private String image9;
    private String image10;
    private String image11;
    private String image12;
    private String image13;
    private String image14;
    private String image15;
    private String image16;

    @ApiModelProperty("内容")
    private String content;

    @ApiModelProperty("内容html")
    private String contentHtml;

    @ApiModelProperty("创建时间")
    private String createTime;

    @ApiModelProperty("逻辑删除")
    @TableLogic
    private Integer isDelete;
}
