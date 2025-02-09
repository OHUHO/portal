package com.record.utils;

import lombok.AllArgsConstructor;
import lombok.Data;


/**
 * <p>
 *  自定义响应数据结构
 * </p>
 *
 * @author 京茶吉鹿
 * @since 2023-03-01
 */
@Data
@AllArgsConstructor
public class Result {

    private Integer code;

    private String message;

    private Object data;


    private Result(){}


    // 返回数据
    public static Result build(Integer code, String message, Object data){
        return new Result(code,message,data);
    }

    // 成功
    public static Result success(){
        return build(200,"成功", null);
    }

    public static Result success(Object data){
        return build(200,"成功", data);
    }


    public static Result fail(){
        return build(500,"失败", null);
    }

    // 失败
    public static Result fail(String message){
        return build(500,message, null);
    }


    public Result message(String message){
        this.setMessage(message);
        return this;
    }

    public Result code(Integer code){
        this.setCode(code);
        return this;
    }


}
