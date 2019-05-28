package com.qhit.fsaas.bo;


import com.qhit.fsaas.util.excelUtils.excel.annotation.ExcelField;

import java.io.Serializable;

public class PersonTemplate implements Serializable {

    /**
     * 客户姓名
     */
    private String name;

    /**
     * 客户喜好
     */
    private String preferred;

    /**
     * 客户所在小组
     */
    private String group;

    public PersonTemplate() {
    }

    public PersonTemplate(String name, String preferred, String group) {
        this.name = name;
        this.preferred = preferred;
        this.group = group;
    }

    @ExcelField(type = 0, title = "客户姓名", align = 2, sort = 1)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @ExcelField(type = 0, title = "客户喜好(登机口:gate,靠过道:aisle,靠窗:windows,婴儿挂篮:basket)", align = 2, sort = 2)
    public String getPreferred() {
        return preferred;
    }

    public void setPreferred(String preferred) {
        this.preferred = preferred;
    }

    @ExcelField(type = 0, title = "客户所在小组(1、2、3...)", align = 2, sort = 3)
    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }
}
