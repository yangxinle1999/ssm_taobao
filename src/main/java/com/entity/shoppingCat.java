package com.entity;

import lombok.Data;

@Data
public class shoppingCat {
    private Integer sId;
    private Integer sUid;
    private Integer sGid;

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public Integer getsUid() {
        return sUid;
    }

    public void setsUid(Integer sUid) {
        this.sUid = sUid;
    }

    public Integer getsGid() {
        return sGid;
    }

    public void setsGid(Integer sGid) {
        this.sGid = sGid;
    }
}
