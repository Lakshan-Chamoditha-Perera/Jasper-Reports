package com.example.jasper.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item {
    private String code;
    private String description;
    private String packSize;
    private double unitPrice;
    private int qtyOnHand;
}
